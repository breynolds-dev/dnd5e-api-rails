require 'rails_helper'

RSpec.describe 'Ability', type: :request do
  let(:load_abilities) do
    FactoryGirl.create :strength
    FactoryGirl.create :dexterity
    FactoryGirl.create :charisma
  end

  let(:parsed_response) { JSON.parse(response.body) }

  describe 'GET /v1/abilities' do
    it 'returns 200 response with empty database' do
      get '/v1/abilities'
      expect(response.status).to eq(200)
      expect(parsed_response).to eq([])
    end

    it 'returns an array of abilities' do
      load_abilities
      get '/v1/abilities'
      expect(response.status).to eq(200)
      expect(parsed_response.map{|resp| resp['name']}).to eq(['Strength', 'Dexterity', 'Charisma'])
      expect(parsed_response.length).to eq(3)
    end
  end

  describe 'GET /v1/abilities/:name' do
    it 'returns 404 response with empty database' do
      get '/v1/abilities/strength'
      expect(response.status).to eq(404)
    end

    it 'returns 404 response when no records are found' do
      load_abilities
      get '/v1/abilities/balance'
      expect(response.status).to eq(404)
    end

    it 'returns the correct object with a 200 response' do
      load_abilities
      get '/v1/abilities/strength'
      expect(response.status).to eq(200)
      expect(parsed_response['name']).to eq('Strength')
      expect(parsed_response['measures']).to eq('Natural athleticism, bodily power')
      expect(parsed_response['important_for']).to eq('Barbarian, Fighter, Paladin')
    end

    it 'shows any associated races for that trait' do
      dragonborn = FactoryGirl.create :dragonborn
      strength = FactoryGirl.create :strength
      dragonborn.abilities << strength
      dragonborn.save

      get '/v1/abilities/strength'

      expect(response.status).to eq(200)
      expect(parsed_response['associated_races'].first['name']).to eq('Dragonborn')
      expect(parsed_response['associated_races'].first['url']).to eq('http://5e-api.com/v1/races/dragonborn')
    end

    it 'returns a links object inside the response' do
      FactoryGirl.create :strength
      get '/v1/abilities/strength'

      expect(response.status).to eq(200)
      expect(parsed_response['links']['self']).to eq('http://5e-api.com/v1/abilities/strength')
    end
  end
end
