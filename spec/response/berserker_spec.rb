require 'rails_helper'

RSpec.describe 'Berserker', type: :request do
  let(:load_barbarians) do
    FactoryGirl.create :barbarian_level_01
    FactoryGirl.create :barbarian_level_02
    FactoryGirl.create :barbarian_level_19_berserker
    FactoryGirl.create :barbarian_level_20_berserker
    FactoryGirl.create :barbarian_level_20_totem
  end

  let(:parsed_response) { JSON.parse(response.body) }

  describe 'GET /v1/classes/barbarians' do
    it 'returns 200 response' do
      get '/v1/classes/barbarians'

      expect(response.status).to eq(200)
      expect(parsed_response).to eq([])
    end

    it 'returns an array of races' do
      load_barbarians
      get '/v1/classes/barbarians'

      expect(response.status).to eq(200)
      expect(parsed_response.first["subclass"]).to eq("Barbarian")
      expect(parsed_response.length).to eq(5)
    end
  end

  describe 'GET /v1/classes/barbarians/(subclass)' do
    it 'returns an array of bersker subclass levels' do
      load_barbarians
      get '/v1/classes/barbarians/Berserker'

      expect(response.status).to eq(200)
      expect(parsed_response.first["subclass"]).to eq("Berserker")
      expect(parsed_response.length).to eq(2)
    end
  end

  describe 'GET /v1/classes/barbarians/(subclass)/(level)' do
    it 'returns the correct entry based on subclass and model' do
      load_barbarians
      get '/v1/classes/barbarians/Berserker/20'

      expect(response.status).to eq(200)
      expect(parsed_response["subclass"]).to eq("Berserker")
      expect(parsed_response["level"]).to eq(20)
    end
  end

  describe 'GET /v1/classes/barbarians/(level)' do
    it 'returns an array of level specefic class entries' do
      load_barbarians
      get '/v1/classes/barbarians/20'

      expect(response.status).to eq(200)
      expect(parsed_response.map{|resp| resp["subclass"]}).to eq(["Berserker", "Totem Warrior"])
      expect(parsed_response.length).to eq(2)
    end
  end
end
