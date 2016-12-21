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

  describe 'GET /v1/races/:id' do
    it 'returns a 404 with an invalid id' do
      get '/v1/races/99'
      expect(response.status).to eq(404)
      expect(parsed_response['path']).to eq('/v1/races/99')
    end

    it 'returns the correct object when searching by id' do
      load_races
      get '/v1/races/10'

      expect(response.status).to eq(200)
      expect(parsed_response.first['name']).to eq('Human')
    end
  end

  describe 'GET /v1/races/:race' do
    it 'returns a 404 with an invalid request' do
      load_races
      get '/v1/races/dark-elf'
      expect(response.status).to eq(404)
      expect(parsed_response['path']).to eq('/v1/races/dark-elf')
    end

    it 'returns the correct object with a 200 response' do
      load_races
      get '/v1/races/dragonborn'

      expect(response.status).to eq(200)
      expect(parsed_response.first['name']).to eq('Dragonborn')
    end

    it 'returns an array of subraces if they exist' do
      load_races
      get '/v1/races/elf'

      expect(response.status).to eq(200)
      expect(parsed_response.map{|resp| resp['subrace']}).to eq(['High Elf', 'Dark Elf'])
      expect(parsed_response.length).to eq(2)
    end
  end

  describe 'GET /v1/races/:race/:subrace' do
    it 'returns the correct object when using friendly urls' do
      load_races
      get '/v1/races/elf/high-elf'
      expect(response.status).to eq(200)
      expect(parsed_response['name']).to eq('Elf')
      expect(parsed_response['subrace']).to eq('High Elf')
    end

    it 'returns a 404 with an invalid request' do
      load_races
      get '/v1/races/elf/wood-elf'
      expect(response.status).to eq(404)
      expect(parsed_response['path']).to eq('/v1/races/elf/wood-elf')
    end
  end
end
