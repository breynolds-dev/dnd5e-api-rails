require 'rails_helper'

RSpec.describe 'Ability', type: :request do
  let(:load_abilities) do
    FactoryGirl.create :strength
    FactoryGirl.create :dexterity
    FactoryGirl.create :charisma
  end

  let(:parsed_response) { JSON.parse(response.body) }

  describe 'GET /v1/abilities' do
    it 'returns an array of abilities' do
      load_abilities
      get '/v1/abilities'
      expect(response.status).to eq(200)
      expect(parsed_response.map{|resp| resp['name']}).to eq(['Strength', 'Dexterity', 'Charisma'])
      expect(parsed_response.length).to eq(3)
    end
  end

  describe 'GET /v1/abilities/:name' do
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
      expect(parsed_response['important_for']['barbarian']).to include('/v1/classes/barbarian')
      expect(parsed_response['important_for']['fighter']).to include('/v1/classes/fighter')
      expect(parsed_response['important_for']['paladin']).to include('/v1/classes/paladin')
    end

    it 'shows any associated skills for that ability' do
      FactoryGirl.create :athletics
      get '/v1/abilities/strength'
      expect(response.status).to eq(200)
      expect(parsed_response['associated_skills']['athletics']).to include('/v1/skills/athletics')
    end

    it 'returns a links object inside the response' do
      FactoryGirl.create :strength
      get '/v1/abilities/strength'
      expect(response.status).to eq(200)
      expect(parsed_response['links']['self']).to include('/v1/abilities/strength')
    end
  end
end
