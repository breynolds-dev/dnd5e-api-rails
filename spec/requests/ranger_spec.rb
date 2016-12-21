require 'rails_helper'

RSpec.describe 'Ranger', type: :request do
  let(:load_rangers) do
    FactoryGirl.create :ranger_level_01
    FactoryGirl.create :ranger_level_02
    FactoryGirl.create :ranger_level_19_hunter
    FactoryGirl.create :ranger_level_20_hunter
    FactoryGirl.create :ranger_level_20_beast
  end

  let(:parsed_response) { JSON.parse(response.body) }

  describe 'GET /v1/classes/ranger' do
    it 'returns 200 response with an empty database' do
      get '/v1/classes/ranger'

      expect(response.status).to eq(200)
      expect(parsed_response).to eq([])
    end

    it 'returns an array of ranger levels' do
      load_rangers
      get '/v1/classes/ranger'

      expect(response.status).to eq(200)
      expect(parsed_response.first['subclass']).to eq('Ranger')
      expect(parsed_response.length).to eq(5)
    end
  end

  describe 'GET /v1/classes/ranger/:level' do
    it 'returns a 404 with an invalid level' do
      load_rangers
      get '/v1/classes/ranger/99'
      expect(response.status).to eq(404)
      expect(parsed_response['path']).to eq('/v1/classes/ranger/99')
    end

    it 'returns an array of level specefic class entries' do
      load_rangers
      get '/v1/classes/ranger/20'

      expect(response.status).to eq(200)
      expect(parsed_response.map{|resp| resp['subclass']}).to eq(['Hunter', 'Beast Master'])
      expect(parsed_response.length).to eq(2)
    end
  end

  describe 'GET /v1/classes/ranger/:subclass' do
    it 'returns a 404 with an invalid subclass' do
      load_rangers
      get '/v1/classes/ranger/legolas'
      expect(response.status).to eq(404)
      expect(parsed_response['path']).to eq('/v1/classes/ranger/legolas')
    end

    it 'returns an array of ranger subclass levels' do
      load_rangers
      get '/v1/classes/ranger/hunter'

      expect(response.status).to eq(200)
      expect(parsed_response.first['subclass']).to eq('Hunter')
      expect(parsed_response.length).to eq(2)
    end

    it 'returns an array of subclass levels regardless of case' do
      load_rangers
      get '/v1/classes/ranger/hUNTEr'

      expect(response.status).to eq(200)
      expect(parsed_response.first['subclass']).to eq('Hunter')
      expect(parsed_response.length).to eq(2)
    end

    it 'returns an array of subclass levels when using friendly urls' do
      load_rangers
      get '/v1/classes/ranger/beast-master'

      expect(response.status).to eq(200)
      expect(parsed_response.first['subclass']).to eq('Beast Master')
      expect(parsed_response.length).to eq(1)
    end
  end

  describe 'GET /v1/classes/ranger/:subclass/:level' do
    it 'returns a 404 with an invalid subclass and level' do
      load_rangers
      get '/v1/classes/ranger/legolas/99'
      expect(response.status).to eq(404)
      expect(parsed_response['path']).to eq('/v1/classes/ranger/legolas/99')
    end

    it 'returns a 404 when trying to use text instead of numbers for a level' do
      load_rangers
      get '/v1/classes/ranger/hunter/nine'
      expect(response.status).to eq(404)
      expect(parsed_response['path']).to eq('/v1/classes/ranger/hunter/nine')
    end

    it 'returns a 404 with an invalid subclass level' do
      load_rangers
      get '/v1/classes/ranger/hunter/99'
      expect(response.status).to eq(404)
      expect(parsed_response['path']).to eq('/v1/classes/ranger/hunter/99')
    end

    it 'returns the correct entry based on subclass and model' do
      load_rangers
      get '/v1/classes/ranger/hunter/20'

      expect(response.status).to eq(200)
      expect(parsed_response['subclass']).to eq('Hunter')
      expect(parsed_response['level']).to eq(20)
    end

    it 'returns the correct entry based on level if under 3' do
      load_rangers
      get '/v1/classes/ranger/hunter/2'

      expect(response.status).to eq(200)
      expect(parsed_response['subclass']).to eq('Ranger')
      expect(parsed_response['level']).to eq(2)
    end

    it 'returns the correct entry with friendly urls' do
      load_rangers
      get '/v1/classes/ranger/beast-master/20'

      expect(response.status).to eq(200)
      expect(parsed_response['subclass']).to eq('Beast Master')
      expect(parsed_response['level']).to eq(20)
    end
  end
end
