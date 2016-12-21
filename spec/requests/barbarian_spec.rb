require 'rails_helper'

RSpec.describe 'Barbarian', type: :request do
  let(:load_barbarians) do
    FactoryGirl.create :barbarian_level_01
    FactoryGirl.create :barbarian_level_02
    FactoryGirl.create :barbarian_level_19_berserker
    FactoryGirl.create :barbarian_level_20_berserker
    FactoryGirl.create :barbarian_level_20_totem
  end

  let(:parsed_response) { JSON.parse(response.body) }

  describe 'GET /v1/classes/barbarian' do
    it 'returns 200 response with an empty database' do
      get '/v1/classes/barbarian'

      expect(response.status).to eq(200)
      expect(parsed_response).to eq([])
    end

    it 'returns an array of barbarian levels' do
      load_barbarians
      get '/v1/classes/barbarian'

      expect(response.status).to eq(200)
      expect(parsed_response.first['subclass']).to eq('Barbarian')
      expect(parsed_response.length).to eq(5)
    end
  end

  describe 'GET /v1/classes/barbarian/:level' do
    it 'returns a 404 with an invalid level' do
      load_barbarians
      get '/v1/classes/barbarian/99'
      expect(response.status).to eq(404)
      expect(parsed_response['path']).to eq('/v1/classes/barbarian/99')
    end

    it 'returns an array of level specefic class entries' do
      load_barbarians
      get '/v1/classes/barbarian/20'

      expect(response.status).to eq(200)
      expect(parsed_response.map{|resp| resp['subclass']}).to eq(['Berserker', 'Totem Warrior'])
      expect(parsed_response.length).to eq(2)
    end
  end

  describe 'GET /v1/classes/barbarian/:subclass' do
    it 'returns a 404 with an invalid subclass' do
      load_barbarians
      get '/v1/classes/barbarian/rager'
      expect(response.status).to eq(404)
      expect(parsed_response['path']).to eq('/v1/classes/barbarian/rager')
    end

    it 'returns an array of berserker subclass levels' do
      load_barbarians
      get '/v1/classes/barbarian/Berserker'

      expect(response.status).to eq(200)
      expect(parsed_response.first['subclass']).to eq('Berserker')
      expect(parsed_response.length).to eq(2)
    end

    it 'returns an array of subclass levels regardless of case' do
      load_barbarians
      get '/v1/classes/barbarian/beRseRKEr'

      expect(response.status).to eq(200)
      expect(parsed_response.first['subclass']).to eq('Berserker')
      expect(parsed_response.length).to eq(2)
    end

    it 'returns an array of subclass levels when using friendly urls' do
      load_barbarians
      get '/v1/classes/barbarian/totem-warrior'

      expect(response.status).to eq(200)
      expect(parsed_response.first['subclass']).to eq('Totem Warrior')
      expect(parsed_response.length).to eq(1)
    end
  end

  describe 'GET /v1/classes/barbarian/:subclass/:level' do
    it 'returns a 404 with an invalid subclass and level' do
      load_barbarians
      get '/v1/classes/barbarian/rager/99'
      expect(response.status).to eq(404)
      expect(parsed_response['path']).to eq('/v1/classes/barbarian/rager/99')
    end

    it 'returns a 404 when trying to use text instead of numbers for a level' do
      load_barbarians
      get '/v1/classes/barbarian/berserker/nine'
      expect(response.status).to eq(404)
      expect(parsed_response['path']).to eq('/v1/classes/barbarian/berserker/nine')
    end

    it 'returns a 404 with an invalid subclass level' do
      load_barbarians
      get '/v1/classes/barbarian/berserker/99'
      expect(response.status).to eq(404)
      expect(parsed_response['path']).to eq('/v1/classes/barbarian/berserker/99')
    end

    it 'returns the correct entry based on subclass and model' do
      load_barbarians
      get '/v1/classes/barbarian/Berserker/20'

      expect(response.status).to eq(200)
      expect(parsed_response['subclass']).to eq('Berserker')
      expect(parsed_response['level']).to eq(20)
    end

    it 'returns the correct entry based on level if under 3' do
      load_barbarians
      get '/v1/classes/barbarian/Berserker/2'

      expect(response.status).to eq(200)
      expect(parsed_response['subclass']).to eq('Barbarian')
      expect(parsed_response['level']).to eq(2)
    end

    it 'returns the correct entry with friendly urls' do
      load_barbarians
      get '/v1/classes/barbarian/totem-warrior/20'

      expect(response.status).to eq(200)
      expect(parsed_response['subclass']).to eq('Totem Warrior')
      expect(parsed_response['level']).to eq(20)
    end
  end
end
