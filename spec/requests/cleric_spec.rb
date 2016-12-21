require 'rails_helper'

RSpec.describe 'Cleric', type: :request do
  let(:load_clerics) do
    FactoryGirl.create :cleric_level_01
    FactoryGirl.create :cleric_level_02
    FactoryGirl.create :cleric_level_19_life
    FactoryGirl.create :cleric_level_20_life
    FactoryGirl.create :cleric_level_20_tempest
  end

  let(:parsed_response) { JSON.parse(response.body) }

  describe 'GET /v1/classes/cleric' do
    it 'returns 200 response with an empty database' do
      get '/v1/classes/cleric'

      expect(response.status).to eq(200)
      expect(parsed_response).to eq([])
    end

    it 'returns an array of cleric levels' do
      load_clerics
      get '/v1/classes/cleric'

      expect(response.status).to eq(200)
      expect(parsed_response.first['subclass']).to eq('Cleric')
      expect(parsed_response.length).to eq(5)
    end
  end

  describe 'GET /v1/classes/cleric/:level' do
    it 'returns a 404 with an invalid level' do
      load_clerics
      get '/v1/classes/cleric/99'
      expect(response.status).to eq(404)
      expect(parsed_response['path']).to eq('/v1/classes/cleric/99')
    end

    it 'returns an array of level specefic class entries' do
      load_clerics
      get '/v1/classes/cleric/20'

      expect(response.status).to eq(200)
      expect(parsed_response.map{|resp| resp['subclass']}).to eq(['Life', 'Tempest'])
      expect(parsed_response.length).to eq(2)
    end
  end

  describe 'GET /v1/classes/cleric/:subclass' do
    it 'returns a 404 with an invalid subclass' do
      load_clerics
      get '/v1/classes/cleric/domain-of-ted'
      expect(response.status).to eq(404)
      expect(parsed_response['path']).to eq('/v1/classes/cleric/domain-of-ted')
    end

    it 'returns an array of cleric subclass levels' do
      load_clerics
      get '/v1/classes/cleric/life'

      expect(response.status).to eq(200)
      expect(parsed_response.first['subclass']).to eq('Life')
      expect(parsed_response.length).to eq(2)
    end

    it 'returns an array of subclass levels regardless of case' do
      load_clerics
      get '/v1/classes/cleric/lIFe'

      expect(response.status).to eq(200)
      expect(parsed_response.first['subclass']).to eq('Life')
      expect(parsed_response.length).to eq(2)
    end
  end

  describe 'GET /v1/classes/cleric/:subclass/:level' do
    it 'returns a 404 with an invalid subclass and level' do
      load_clerics
      get '/v1/classes/cleric/domain-of-ted/99'
      expect(response.status).to eq(404)
      expect(parsed_response['path']).to eq('/v1/classes/cleric/domain-of-ted/99')
    end

    it 'returns a 404 when trying to use text instead of numbers for a level' do
      load_clerics
      get '/v1/classes/cleric/life/nine'
      expect(response.status).to eq(404)
      expect(parsed_response['path']).to eq('/v1/classes/cleric/life/nine')
    end

    it 'returns a 404 with an invalid subclass level' do
      load_clerics
      get '/v1/classes/cleric/life/99'
      expect(response.status).to eq(404)
      expect(parsed_response['path']).to eq('/v1/classes/cleric/life/99')
    end

    it 'returns the correct entry based on subclass and model' do
      load_clerics
      get '/v1/classes/cleric/life/20'

      expect(response.status).to eq(200)
      expect(parsed_response['subclass']).to eq('Life')
      expect(parsed_response['level']).to eq(20)
    end

    it 'returns the correct entry based on level if under 3' do
      load_clerics
      get '/v1/classes/cleric/life/2'

      expect(response.status).to eq(200)
      expect(parsed_response['subclass']).to eq('Cleric')
      expect(parsed_response['level']).to eq(2)
    end
  end
end
