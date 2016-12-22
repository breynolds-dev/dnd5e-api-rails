require 'rails_helper'

RSpec.describe 'Trait', type: :request do
  let(:load_traits) do
    FactoryGirl.create :draconic_ancestry
    FactoryGirl.create :trance
    FactoryGirl.create :tinker
  end

  let(:parsed_response) { JSON.parse(response.body) }

  describe 'GET /v1/traits' do
    it 'returns 200 response with empty database' do
      get '/v1/traits'

      expect(response.status).to eq(200)
      expect(parsed_response).to eq([])
    end

    it 'returns an array of traits in alphabetical order' do
      load_traits
      get '/v1/traits'

      expect(response.status).to eq(200)
      expect(parsed_response.map{|resp| resp['name']}).to eq(['Draconic Ancestry', 'Tinker', 'Trance'])
      expect(parsed_response.length).to eq(3)
    end
  end

  describe 'GET /v1/traits/:name' do
    it 'returns 404 response with empty database' do
      get '/v1/traits/trance'

      expect(response.status).to eq(404)
    end

    it 'returns 404 response when no records are found' do
      load_traits
      get '/v1/traits/exceptionally-handsome'

      expect(response.status).to eq(404)
    end

    it 'returns the correct object with a 200 response' do
      load_traits
      get '/v1/traits/trance'

      expect(response.status).to eq(200)
      expect(parsed_response['name']).to eq('Trance')
    end

    it 'returns the correct object with friendly urls' do
      load_traits
      get '/v1/traits/draconic-ancestry'

      expect(response.status).to eq(200)
      expect(parsed_response['name']).to eq('Draconic Ancestry')
    end
  end
end
