require 'rails_helper'

RSpec.describe 'Feats', type: :request do
  let(:parsed_response) { JSON.parse(response.body) }
  let(:load_feats) do
    FactoryGirl.create(:athlete)
    FactoryGirl.create(:elemental_adept)
    FactoryGirl.create(:grappler)
  end

  describe 'GET /v1/feats' do
    it 'returns an array feats as json objects' do
      get '/v1/feats'
      expect(response.status).to eq(200)
      expect(parsed_response.map{ |f|f.name }).to eq(['Athlete', 'Elemental Adept', 'Grappler'])
    end
  end

  describe 'GET /v1/feats/:feat_name' do
    it 'returns a 404 with an invalid feat' do
      get '/v1/feats/crazy'
      expect(response.status).to eq(404)
      expect(parsed_response['path']).to eq('/v1/feats/crazy')
    end

    it 'returns a feat JSON object' do
      load_feats
      get '/v1/feats/athlete'
      expect(response.status).to eq(200)
      expect(parsed_response['name']).to eq('Athlete')
    end
  end
end
