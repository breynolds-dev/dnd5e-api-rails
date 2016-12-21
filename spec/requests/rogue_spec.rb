require 'rails_helper'

RSpec.describe 'Rogue', type: :request do
  let(:load_rogues) do
    FactoryGirl.create :rogue_level_01
    FactoryGirl.create :rogue_level_02
    FactoryGirl.create :rogue_level_19_arcane
    FactoryGirl.create :rogue_level_20_arcane
    FactoryGirl.create :rogue_level_20_thief
  end

  let(:parsed_response) { JSON.parse(response.body) }

  describe 'GET /v1/classes/rogue' do
    it 'returns 200 response with an empty database' do
      get '/v1/classes/rogue'

      expect(response.status).to eq(200)
      expect(parsed_response).to eq([])
    end

    it 'returns an array of rogue levels' do
      load_rogues
      get '/v1/classes/rogue'

      expect(response.status).to eq(200)
      expect(parsed_response.first['subclass']).to eq('Rogue')
      expect(parsed_response.length).to eq(5)
    end
  end

  describe 'GET /v1/classes/rogue/:level' do
    it 'returns a 404 with an invalid level' do
      load_rogues
      get '/v1/classes/rogue/99'
      expect(response.status).to eq(404)
      expect(parsed_response['path']).to eq('/v1/classes/rogue/99')
    end

    it 'returns an array of level specefic class entries' do
      load_rogues
      get '/v1/classes/rogue/20'

      expect(response.status).to eq(200)
      expect(parsed_response.map{|resp| resp['subclass']}).to eq(['Arcane Trickster', 'Thief'])
      expect(parsed_response.length).to eq(2)
    end
  end

  describe 'GET /v1/classes/rogue/:subclass' do
    it 'returns a 404 with an invalid subclass' do
      load_rogues
      get '/v1/classes/rogue/pickpocket'
      expect(response.status).to eq(404)
      expect(parsed_response['path']).to eq('/v1/classes/rogue/pickpocket')
    end

    it 'returns an array of rogue subclass levels' do
      load_rogues
      get '/v1/classes/rogue/arcane-trickster'

      expect(response.status).to eq(200)
      expect(parsed_response.first['subclass']).to eq('Arcane Trickster')
      expect(parsed_response.length).to eq(2)
    end

    it 'returns an array of subclass levels regardless of case' do
      load_rogues
      get '/v1/classes/rogue/aRCANe-tRICKSTEr'

      expect(response.status).to eq(200)
      expect(parsed_response.first['subclass']).to eq('Arcane Trickster')
      expect(parsed_response.length).to eq(2)
    end

    it 'returns an array of subclass levels when using friendly urls' do
      load_rogues
      get '/v1/classes/rogue/thief'

      expect(response.status).to eq(200)
      expect(parsed_response.first['subclass']).to eq('Thief')
      expect(parsed_response.length).to eq(1)
    end
  end

  describe 'GET /v1/classes/rogue/:subclass/:level' do
    it 'returns a 404 with an invalid subclass and level' do
      load_rogues
      get '/v1/classes/rogue/pickpocket/99'
      expect(response.status).to eq(404)
      expect(parsed_response['path']).to eq('/v1/classes/rogue/pickpocket/99')
    end

    it 'returns a 404 when trying to use text instead of numbers for a level' do
      load_rogues
      get '/v1/classes/rogue/arcane-trickster/nine'
      expect(response.status).to eq(404)
      expect(parsed_response['path']).to eq('/v1/classes/rogue/arcane-trickster/nine')
    end

    it 'returns a 404 with an invalid subclass level' do
      load_rogues
      get '/v1/classes/rogue/arcane-trickster/99'
      expect(response.status).to eq(404)
      expect(parsed_response['path']).to eq('/v1/classes/rogue/arcane-trickster/99')
    end

    it 'returns the correct entry based on subclass and model' do
      load_rogues
      get '/v1/classes/rogue/arcane-trickster/20'

      expect(response.status).to eq(200)
      expect(parsed_response['subclass']).to eq('Arcane Trickster')
      expect(parsed_response['level']).to eq(20)
    end

    it 'returns the correct entry based on level if under 3' do
      load_rogues
      get '/v1/classes/rogue/arcane-trickster/2'

      expect(response.status).to eq(200)
      expect(parsed_response['subclass']).to eq('Rogue')
      expect(parsed_response['level']).to eq(2)
    end

    it 'returns the correct entry with friendly urls' do
      load_rogues
      get '/v1/classes/rogue/thief/20'

      expect(response.status).to eq(200)
      expect(parsed_response['subclass']).to eq('Thief')
      expect(parsed_response['level']).to eq(20)
    end
  end
end
