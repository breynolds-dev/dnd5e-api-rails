require 'rails_helper'

RSpec.describe 'Language', type: :request do
  let(:load_skills) do
    FactoryGirl.create :athletics
    FactoryGirl.create :animal_handling
    FactoryGirl.create :deception
    FactoryGirl.create :history
    FactoryGirl.create :stealth
  end

  let(:parsed_response) { JSON.parse(response.body) }

  describe 'GET /v1/skills' do
    it 'returns 200 response with empty database' do
      get '/v1/skills'

      expect(response.status).to eq(200)
      expect(parsed_response).to eq([])
    end

    it 'returns an array of skills' do
      load_skills
      get '/v1/skills'

      expect(response.status).to eq(200)
      expect(parsed_response.map{|resp| resp['name']}).to eq(['Athletics', 'Animal Handling', 'Deception', 'History', 'Stealth'])
      expect(parsed_response.length).to eq(5)
    end
  end

  describe 'GET /v1/skills/:name' do
    it 'returns 404 response with empty database' do
      get '/v1/skills/stealth'

      expect(response.status).to eq(404)
    end

    it 'returns 404 response when no records are found' do
      load_skills
      get '/v1/skills/programming'

      expect(response.status).to eq(404)
    end

    it 'returns the correct object with a 200 response' do
      load_skills
      get '/v1/skills/athletics'

      expect(response.status).to eq(200)
      expect(parsed_response['name']).to eq('Athletics')
    end

    it 'returns the correct object with friendly urls' do
      load_skills
      get '/v1/skills/animal-handling'

      expect(response.status).to eq(200)
      expect(parsed_response['name']).to eq('Animal Handling')
    end
  end
end
