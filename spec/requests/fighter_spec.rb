require 'rails_helper'

RSpec.describe 'Fighter', type: :request do
  let(:load_fighters) do
    FactoryGirl.create :fighter_level_01
    FactoryGirl.create :fighter_level_02
    FactoryGirl.create :fighter_level_19_eldritch
    FactoryGirl.create :fighter_level_20_eldritch
    FactoryGirl.create :fighter_level_20_champion
  end

  let(:parsed_response) { JSON.parse(response.body) }

  describe 'GET /v1/classes/fighter' do
    it 'returns 200 response with an empty database' do
      get '/v1/classes/fighter'

      expect(response.status).to eq(200)
      expect(parsed_response).to eq([])
    end

    it 'returns an array of fighter levels' do
      load_fighters
      get '/v1/classes/fighter'

      expect(response.status).to eq(200)
      expect(parsed_response.first['subclass']).to eq('Fighter')
      expect(parsed_response.length).to eq(5)
    end
  end

  describe 'GET /v1/classes/fighter/:level' do
    it 'returns a 404 with an invalid level' do
      load_fighters
      get '/v1/classes/fighter/99'
      expect(response.status).to eq(404)
      expect(parsed_response['path']).to eq('/v1/classes/fighter/99')
    end

    it 'returns an array of level specefic class entries' do
      load_fighters
      get '/v1/classes/fighter/20'

      expect(response.status).to eq(200)
      expect(parsed_response.map{|resp| resp['subclass']}).to eq(['Eldritch Knight', 'Champion'])
      expect(parsed_response.length).to eq(2)
    end
  end

  describe 'GET /v1/classes/fighter/:subclass' do
    it 'returns a 404 with an invalid subclass' do
      load_fighters
      get '/v1/classes/fighter/shovel-knight'
      expect(response.status).to eq(404)
      expect(parsed_response['path']).to eq('/v1/classes/fighter/shovel-knight')
    end

    it 'returns an array of fighter subclass levels' do
      load_fighters
      get '/v1/classes/fighter/eldritch-knight'

      expect(response.status).to eq(200)
      expect(parsed_response.first['subclass']).to eq('Eldritch Knight')
      expect(parsed_response.length).to eq(2)
    end

    it 'returns an array of subclass levels regardless of case' do
      load_fighters
      get '/v1/classes/fighter/eLDRITCh-kNIGHt'

      expect(response.status).to eq(200)
      expect(parsed_response.first['subclass']).to eq('Eldritch Knight')
      expect(parsed_response.length).to eq(2)
    end

    it 'returns an array of subclass levels when using friendly urls' do
      load_fighters
      get '/v1/classes/fighter/champion'

      expect(response.status).to eq(200)
      expect(parsed_response.first['subclass']).to eq('Champion')
      expect(parsed_response.length).to eq(1)
    end
  end

  describe 'GET /v1/classes/fighter/:subclass/:level' do
    it 'returns a 404 with an invalid subclass and level' do
      load_fighters
      get '/v1/classes/fighter/shovel-knight/99'
      expect(response.status).to eq(404)
      expect(parsed_response['path']).to eq('/v1/classes/fighter/shovel-knight/99')
    end

    it 'returns a 404 when trying to use text instead of numbers for a level' do
      load_fighters
      get '/v1/classes/fighter/eldritch-knight/nine'
      expect(response.status).to eq(404)
      expect(parsed_response['path']).to eq('/v1/classes/fighter/eldritch-knight/nine')
    end

    it 'returns a 404 with an invalid subclass level' do
      load_fighters
      get '/v1/classes/fighter/eldritch-knight/99'
      expect(response.status).to eq(404)
      expect(parsed_response['path']).to eq('/v1/classes/fighter/eldritch-knight/99')
    end

    it 'returns the correct entry based on subclass and model' do
      load_fighters
      get '/v1/classes/fighter/eldritch-knight/20'

      expect(response.status).to eq(200)
      expect(parsed_response['subclass']).to eq('Eldritch Knight')
      expect(parsed_response['level']).to eq(20)
    end

    it 'returns the correct entry based on level if under 3' do
      load_fighters
      get '/v1/classes/fighter/eldritch-knight/2'

      expect(response.status).to eq(200)
      expect(parsed_response['subclass']).to eq('Fighter')
      expect(parsed_response['level']).to eq(2)
    end

    it 'returns the correct entry with friendly urls' do
      load_fighters
      get '/v1/classes/fighter/champion/20'

      expect(response.status).to eq(200)
      expect(parsed_response['subclass']).to eq('Champion')
      expect(parsed_response['level']).to eq(20)
    end
  end
end
