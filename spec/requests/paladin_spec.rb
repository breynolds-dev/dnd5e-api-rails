require 'rails_helper'

RSpec.describe 'Paladin', type: :request do
  let(:load_paladins) do
    FactoryGirl.create :paladin_level_01
    FactoryGirl.create :paladin_level_02
    FactoryGirl.create :paladin_level_19_devotion
    FactoryGirl.create :paladin_level_20_devotion
    FactoryGirl.create :paladin_level_20_ancients
  end

  let(:parsed_response) { JSON.parse(response.body) }

  describe 'GET /v1/classes/paladin' do
    it 'returns 200 response with an empty database' do
      get '/v1/classes/paladin'

      expect(response.status).to eq(200)
      expect(parsed_response).to eq([])
    end

    it 'returns an array of paladin levels' do
      load_paladins
      get '/v1/classes/paladin'

      expect(response.status).to eq(200)
      expect(parsed_response.first['subclass']).to eq('Paladin')
      expect(parsed_response.length).to eq(5)
    end
  end

  describe 'GET /v1/classes/paladin/:level' do
    it 'returns a 404 with an invalid level' do
      load_paladins
      get '/v1/classes/paladin/99'
      expect(response.status).to eq(404)
      expect(parsed_response['path']).to eq('/v1/classes/paladin/99')
    end

    it 'returns an array of level specefic class entries' do
      load_paladins
      get '/v1/classes/paladin/20'

      expect(response.status).to eq(200)
      expect(parsed_response.map{|resp| resp['subclass']}).to eq(['Oath of Devotion', 'Oath of the Ancients'])
      expect(parsed_response.length).to eq(2)
    end
  end

  describe 'GET /v1/classes/paladin/:subclass' do
    it 'returns a 404 with an invalid subclass' do
      load_paladins
      get '/v1/classes/paladin/oath-of-saftey'
      expect(response.status).to eq(404)
      expect(parsed_response['path']).to eq('/v1/classes/paladin/oath-of-saftey')
    end

    it 'returns an array of paladin subclass levels' do
      load_paladins
      get '/v1/classes/paladin/oath-of-devotion'

      expect(response.status).to eq(200)
      expect(parsed_response.first['subclass']).to eq('Oath of Devotion')
      expect(parsed_response.length).to eq(2)
    end

    it 'returns an array of subclass levels regardless of case' do
      load_paladins
      get '/v1/classes/paladin/oATh-of-dEVOTIOn'

      expect(response.status).to eq(200)
      expect(parsed_response.first['subclass']).to eq('Oath of Devotion')
      expect(parsed_response.length).to eq(2)
    end

    it 'returns an array of subclass levels when using friendly urls' do
      load_paladins
      get '/v1/classes/paladin/oath-of-the-ancients'

      expect(response.status).to eq(200)
      expect(parsed_response.first['subclass']).to eq('Oath of the Ancients')
      expect(parsed_response.length).to eq(1)
    end
  end

  describe 'GET /v1/classes/paladin/:subclass/:level' do
    it 'returns a 404 with an invalid subclass and level' do
      load_paladins
      get '/v1/classes/paladin/oath-of-saftey/99'
      expect(response.status).to eq(404)
      expect(parsed_response['path']).to eq('/v1/classes/paladin/oath-of-saftey/99')
    end

    it 'returns a 404 when trying to use text instead of numbers for a level' do
      load_paladins
      get '/v1/classes/paladin/oath-of-devotion/nine'
      expect(response.status).to eq(404)
      expect(parsed_response['path']).to eq('/v1/classes/paladin/oath-of-devotion/nine')
    end

    it 'returns a 404 with an invalid subclass level' do
      load_paladins
      get '/v1/classes/paladin/oath-of-devotion/99'
      expect(response.status).to eq(404)
      expect(parsed_response['path']).to eq('/v1/classes/paladin/oath-of-devotion/99')
    end

    it 'returns the correct entry based on subclass and model' do
      load_paladins
      get '/v1/classes/paladin/oath-of-devotion/20'

      expect(response.status).to eq(200)
      expect(parsed_response['subclass']).to eq('Oath of Devotion')
      expect(parsed_response['level']).to eq(20)
    end

    it 'returns the correct entry based on level if under 3' do
      load_paladins
      get '/v1/classes/paladin/oath-of-devotion/2'

      expect(response.status).to eq(200)
      expect(parsed_response['subclass']).to eq('Paladin')
      expect(parsed_response['level']).to eq(2)
    end

    it 'returns the correct entry with friendly urls' do
      load_paladins
      get '/v1/classes/paladin/oath-of-the-ancients/20'

      expect(response.status).to eq(200)
      expect(parsed_response['subclass']).to eq('Oath of the Ancients')
      expect(parsed_response['level']).to eq(20)
    end
  end
end
