require 'rails_helper'

RSpec.describe 'Races', type: :request do
  let(:load_races) do
    FactoryGirl.create :dragonborn
    FactoryGirl.create :human
    FactoryGirl.create :high_elf
    FactoryGirl.create :dark_elf
  end

  let(:parsed_response) { JSON.parse(response.body) }

  describe 'GET /v1/races' do
    it 'returns 200 response' do
      get '/v1/races'

      expect(response.status).to eq(200)
      expect(parsed_response).to eq([])
    end

    it 'returns an array of races' do
      load_races
      get '/v1/races'

      expect(response.status).to eq(200)
      expect(parsed_response.map{|resp| resp['name']}).to eq(['Dragonborn', 'Human', 'Elf', 'Elf'])
      expect(parsed_response.length).to eq(4)
    end
  end

  describe 'GET /v1/races/:race' do
    it 'returns 200 response' do
      get '/v1/races/dragonborn'
      expect(response.status).to eq(200)
    end

    it 'returns the correct object' do
      load_races
      get '/v1/races/dragonborn'

      expect(response.status).to eq(200)
      expect(parsed_response['name']).to eq('Dragonborn')
    end

    it 'returns the correct object when searching by id' do
      load_races
      get '/v1/races/14'

      expect(response.status).to eq(200)
      expect(parsed_response['name']).to eq('Human')
    end

    it 'returns the correct object when using friendly urls' do
      load_races
      get '/v1/races/high-elf'
      expect(response.status).to eq(200)
      expect(parsed_response['name']).to eq('Elf')
      expect(parsed_response['subrace']).to eq('High Elf')
    end
  end
end
