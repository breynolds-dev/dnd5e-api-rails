require 'rails_helper'

RSpec.describe 'Subclasses', type: :request do
  let(:parsed_response) { JSON.parse(response.body) }

  describe 'GET /v1/classes/:class_name/subclasses' do
    it 'returns a 404 with an invalid class' do
      FactoryGirl.create(:barbarian)
      get '/v1/classes/berserker/subclasses'
      expect(response.status).to eq(404)
      expect(parsed_response['path']).to eq('/v1/classes/berserker/subclasses')
    end

    it 'returns an array of subclasses' do
      class_name = FactoryGirl.create(:barbarian)
      class_name.levels.create(subclass: 'Barbarian', number: 1)
      class_name.levels.create(subclass: 'Berserker', number: 20)
      class_name.levels.create(subclass: 'Totem Warrior', number: 20)
      get '/v1/classes/barbarian/subclasses'

      expect(response.status).to eq(200)
      expect(parsed_response.collect { |cls| cls['subclass'] }).to eq(
        ['Berserker', 'Totem Warrior']
      )
    end
  end

  describe 'GET /v1/classes/:class_name/:subclass' do
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


end
