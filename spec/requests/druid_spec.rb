require 'rails_helper'

RSpec.describe 'Druid', type: :request do
  let(:load_druids) do
    FactoryGirl.create :druid_level_01
    FactoryGirl.create :druid_level_02
    FactoryGirl.create :druid_level_19_land
    FactoryGirl.create :druid_level_20_land
    FactoryGirl.create :druid_level_20_moon
  end

  let(:parsed_response) { JSON.parse(response.body) }

  describe 'GET /v1/classes/druid' do
    it 'returns 200 response with an empty database' do
      get '/v1/classes/druid'

      expect(response.status).to eq(200)
      expect(parsed_response).to eq([])
    end

    it 'returns an array of druid levels' do
      load_druids
      get '/v1/classes/druid'

      expect(response.status).to eq(200)
      expect(parsed_response.first['subclass']).to eq('Druid')
      expect(parsed_response.length).to eq(5)
    end
  end

  describe 'GET /v1/classes/druid/:level' do
    it 'returns a 404 with an invalid level' do
      load_druids
      get '/v1/classes/druid/99'
      expect(response.status).to eq(404)
      expect(parsed_response['path']).to eq('/v1/classes/druid/99')
    end

    it 'returns an array of level specefic class entries' do
      load_druids
      get '/v1/classes/druid/20'

      expect(response.status).to eq(200)
      expect(parsed_response.map{|resp| resp['subclass']}).to eq(['Circle of the Land', 'Circle of the Moon'])
      expect(parsed_response.length).to eq(2)
    end
  end

  describe 'GET /v1/classes/druid/:subclass' do
    it 'returns a 404 with an invalid subclass' do
      load_druids
      get '/v1/classes/druid/circle-of-the-squares'
      expect(response.status).to eq(404)
      expect(parsed_response['path']).to eq('/v1/classes/druid/circle-of-the-squares')
    end

    it 'returns an array of druid subclass levels' do
      load_druids
      get '/v1/classes/druid/circle-of-the-land'

      expect(response.status).to eq(200)
      expect(parsed_response.first['subclass']).to eq('Circle of the Land')
      expect(parsed_response.length).to eq(2)
    end

    it 'returns an array of subclass levels regardless of case' do
      load_druids
      get '/v1/classes/druid/cIRCLe-of-tHe-lANd'

      expect(response.status).to eq(200)
      expect(parsed_response.first['subclass']).to eq('Circle of the Land')
      expect(parsed_response.length).to eq(2)
    end

    it 'returns an array of subclass levels when using friendly urls' do
      load_druids
      get '/v1/classes/druid/circle-of-the-moon'

      expect(response.status).to eq(200)
      expect(parsed_response.first['subclass']).to eq('Circle of the Moon')
      expect(parsed_response.length).to eq(1)
    end
  end

  describe 'GET /v1/classes/druid/:subclass/:level' do
    it 'returns a 404 with an invalid subclass and level' do
      load_druids
      get '/v1/classes/druid/circle-of-the-squares/99'
      expect(response.status).to eq(404)
      expect(parsed_response['path']).to eq('/v1/classes/druid/circle-of-the-squares/99')
    end

    it 'returns a 404 when trying to use text instead of numbers for a level' do
      load_druids
      get '/v1/classes/druid/circle-of-the-land/nine'
      expect(response.status).to eq(404)
      expect(parsed_response['path']).to eq('/v1/classes/druid/circle-of-the-land/nine')
    end

    it 'returns a 404 with an invalid subclass level' do
      load_druids
      get '/v1/classes/druid/circle-of-the-land/99'
      expect(response.status).to eq(404)
      expect(parsed_response['path']).to eq('/v1/classes/druid/circle-of-the-land/99')
    end

    it 'returns the correct entry based on subclass and model' do
      load_druids
      get '/v1/classes/druid/circle-of-the-land/20'

      expect(response.status).to eq(200)
      expect(parsed_response['subclass']).to eq('Circle of the Land')
      expect(parsed_response['level']).to eq(20)
    end

    it 'returns the correct entry based on level if under 3' do
      load_druids
      get '/v1/classes/druid/circle-of-the-land/2'

      expect(response.status).to eq(200)
      expect(parsed_response['subclass']).to eq('Druid')
      expect(parsed_response['level']).to eq(2)
    end

    it 'returns the correct entry with friendly urls' do
      load_druids
      get '/v1/classes/druid/circle-of-the-moon/20'

      expect(response.status).to eq(200)
      expect(parsed_response['subclass']).to eq('Circle of the Moon')
      expect(parsed_response['level']).to eq(20)
    end
  end
end
