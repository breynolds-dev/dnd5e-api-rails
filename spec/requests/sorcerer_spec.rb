require 'rails_helper'

RSpec.describe 'Sorcerer', type: :request do
  let(:load_sorcerers) do
    FactoryGirl.create :sorcerer_level_01
    FactoryGirl.create :sorcerer_level_02
    FactoryGirl.create :sorcerer_level_19_draconic
    FactoryGirl.create :sorcerer_level_20_draconic
    FactoryGirl.create :sorcerer_level_20_wild
  end

  let(:parsed_response) { JSON.parse(response.body) }

  describe 'GET /v1/classes/sorcerer' do
    it 'returns 200 response with an empty database' do
      get '/v1/classes/sorcerer'

      expect(response.status).to eq(200)
      expect(parsed_response).to eq([])
    end

    it 'returns an array of sorcerer levels' do
      load_sorcerers
      get '/v1/classes/sorcerer'

      expect(response.status).to eq(200)
      expect(parsed_response.first['subclass']).to eq('Sorcerer')
      expect(parsed_response.length).to eq(5)
    end
  end

  describe 'GET /v1/classes/sorcerer/:level' do
    it 'returns a 404 with an invalid level' do
      load_sorcerers
      get '/v1/classes/sorcerer/99'
      expect(response.status).to eq(404)
      expect(parsed_response['path']).to eq('/v1/classes/sorcerer/99')
    end

    it 'returns an array of level specefic class entries' do
      load_sorcerers
      get '/v1/classes/sorcerer/20'

      expect(response.status).to eq(200)
      expect(parsed_response.map{|resp| resp['subclass']}).to eq(['Draconic Bloodline', 'Wild Magic'])
      expect(parsed_response.length).to eq(2)
    end
  end

  describe 'GET /v1/classes/sorcerer/:subclass' do
    it 'returns a 404 with an invalid subclass' do
      load_sorcerers
      get '/v1/classes/sorcerer/infernal'
      expect(response.status).to eq(404)
      expect(parsed_response['path']).to eq('/v1/classes/sorcerer/infernal')
    end

    it 'returns an array of sorcerer subclass levels' do
      load_sorcerers
      get '/v1/classes/sorcerer/draconic-bloodline'

      expect(response.status).to eq(200)
      expect(parsed_response.first['subclass']).to eq('Draconic Bloodline')
      expect(parsed_response.length).to eq(2)
    end

    it 'returns an array of subclass levels regardless of case' do
      load_sorcerers
      get '/v1/classes/sorcerer/dRACONIc-bLOODLINe'

      expect(response.status).to eq(200)
      expect(parsed_response.first['subclass']).to eq('Draconic Bloodline')
      expect(parsed_response.length).to eq(2)
    end

    it 'returns an array of subclass levels when using friendly urls' do
      load_sorcerers
      get '/v1/classes/sorcerer/wild-magic'

      expect(response.status).to eq(200)
      expect(parsed_response.first['subclass']).to eq('Wild Magic')
      expect(parsed_response.length).to eq(1)
    end
  end

  describe 'GET /v1/classes/sorcerer/:subclass/:level' do
    it 'returns a 404 with an invalid subclass and level' do
      load_sorcerers
      get '/v1/classes/sorcerer/infernal/99'
      expect(response.status).to eq(404)
      expect(parsed_response['path']).to eq('/v1/classes/sorcerer/infernal/99')
    end

    it 'returns a 404 when trying to use text instead of numbers for a level' do
      load_sorcerers
      get '/v1/classes/sorcerer/draconic-bloodline/nine'
      expect(response.status).to eq(404)
      expect(parsed_response['path']).to eq('/v1/classes/sorcerer/draconic-bloodline/nine')
    end

    it 'returns a 404 with an invalid subclass level' do
      load_sorcerers
      get '/v1/classes/sorcerer/draconic-bloodline/99'
      expect(response.status).to eq(404)
      expect(parsed_response['path']).to eq('/v1/classes/sorcerer/draconic-bloodline/99')
    end

    it 'returns the correct entry based on subclass and model' do
      load_sorcerers
      get '/v1/classes/sorcerer/draconic-bloodline/20'

      expect(response.status).to eq(200)
      expect(parsed_response['subclass']).to eq('Draconic Bloodline')
      expect(parsed_response['level']).to eq(20)
    end

    it 'returns the correct entry based on level if under 3' do
      load_sorcerers
      get '/v1/classes/sorcerer/draconic-bloodline/2'

      expect(response.status).to eq(200)
      expect(parsed_response['subclass']).to eq('Sorcerer')
      expect(parsed_response['level']).to eq(2)
    end

    it 'returns the correct entry with friendly urls' do
      load_sorcerers
      get '/v1/classes/sorcerer/wild-magic/20'

      expect(response.status).to eq(200)
      expect(parsed_response['subclass']).to eq('Wild Magic')
      expect(parsed_response['level']).to eq(20)
    end
  end
end
