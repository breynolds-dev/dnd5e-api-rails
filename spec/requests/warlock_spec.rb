require 'rails_helper'

RSpec.describe 'Warlock', type: :request do
  let(:load_warlocks) do
    FactoryGirl.create :warlock_level_01
    FactoryGirl.create :warlock_level_02
    FactoryGirl.create :warlock_level_19_archfey
    FactoryGirl.create :warlock_level_20_archfey
    FactoryGirl.create :warlock_level_20_great
  end

  let(:parsed_response) { JSON.parse(response.body) }

  describe 'GET /v1/classes/warlock' do
    it 'returns 200 response with an empty database' do
      get '/v1/classes/warlock'

      expect(response.status).to eq(200)
      expect(parsed_response).to eq([])
    end

    it 'returns an array of warlock levels' do
      load_warlocks
      get '/v1/classes/warlock'

      expect(response.status).to eq(200)
      expect(parsed_response.first['subclass']).to eq('Warlock')
      expect(parsed_response.length).to eq(5)
    end
  end

  describe 'GET /v1/classes/warlock/:level' do
    it 'returns a 404 with an invalid level' do
      load_warlocks
      get '/v1/classes/warlock/99'
      expect(response.status).to eq(404)
      expect(parsed_response['path']).to eq('/v1/classes/warlock/99')
    end

    it 'returns an array of level specefic class entries' do
      load_warlocks
      get '/v1/classes/warlock/20'

      expect(response.status).to eq(200)
      expect(parsed_response.map{|resp| resp['subclass']}).to eq(['Archfey', 'Great One'])
      expect(parsed_response.length).to eq(2)
    end
  end

  describe 'GET /v1/classes/warlock/:subclass' do
    it 'returns a 404 with an invalid subclass' do
      load_warlocks
      get '/v1/classes/warlock/demon-magic'
      expect(response.status).to eq(404)
      expect(parsed_response['path']).to eq('/v1/classes/warlock/demon-magic')
    end

    it 'returns an array of warlock subclass levels' do
      load_warlocks
      get '/v1/classes/warlock/archfey'

      expect(response.status).to eq(200)
      expect(parsed_response.first['subclass']).to eq('Archfey')
      expect(parsed_response.length).to eq(2)
    end

    it 'returns an array of subclass levels regardless of case' do
      load_warlocks
      get '/v1/classes/warlock/aRCHFEy'

      expect(response.status).to eq(200)
      expect(parsed_response.first['subclass']).to eq('Archfey')
      expect(parsed_response.length).to eq(2)
    end

    it 'returns an array of subclass levels when using friendly urls' do
      load_warlocks
      get '/v1/classes/warlock/great-one'

      expect(response.status).to eq(200)
      expect(parsed_response.first['subclass']).to eq('Great One')
      expect(parsed_response.length).to eq(1)
    end
  end

  describe 'GET /v1/classes/warlock/:subclass/:level' do
    it 'returns a 404 with an invalid subclass and level' do
      load_warlocks
      get '/v1/classes/warlock/demon-magic/99'
      expect(response.status).to eq(404)
      expect(parsed_response['path']).to eq('/v1/classes/warlock/demon-magic/99')
    end

    it 'returns a 404 when trying to use text instead of numbers for a level' do
      load_warlocks
      get '/v1/classes/warlock/archfey/nine'
      expect(response.status).to eq(404)
      expect(parsed_response['path']).to eq('/v1/classes/warlock/archfey/nine')
    end

    it 'returns a 404 with an invalid subclass level' do
      load_warlocks
      get '/v1/classes/warlock/archfey/99'
      expect(response.status).to eq(404)
      expect(parsed_response['path']).to eq('/v1/classes/warlock/archfey/99')
    end

    it 'returns the correct entry based on subclass and model' do
      load_warlocks
      get '/v1/classes/warlock/archfey/20'

      expect(response.status).to eq(200)
      expect(parsed_response['subclass']).to eq('Archfey')
      expect(parsed_response['level']).to eq(20)
    end

    it 'returns the correct entry based on level if under 3' do
      load_warlocks
      get '/v1/classes/warlock/archfey/2'

      expect(response.status).to eq(200)
      expect(parsed_response['subclass']).to eq('Warlock')
      expect(parsed_response['level']).to eq(2)
    end

    it 'returns the correct entry with friendly urls' do
      load_warlocks
      get '/v1/classes/warlock/great-one/20'

      expect(response.status).to eq(200)
      expect(parsed_response['subclass']).to eq('Great One')
      expect(parsed_response['level']).to eq(20)
    end
  end
end
