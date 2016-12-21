require 'rails_helper'

RSpec.describe 'Bard', type: :request do
  let(:load_bards) do
    FactoryGirl.create :bard_level_01
    FactoryGirl.create :bard_level_02
    FactoryGirl.create :bard_level_19_lore
    FactoryGirl.create :bard_level_20_lore
    FactoryGirl.create :bard_level_20_valor
  end

  let(:parsed_response) { JSON.parse(response.body) }

  describe 'GET /v1/classes/bard' do
    it 'returns 200 response with an empty database' do
      get '/v1/classes/bard'

      expect(response.status).to eq(200)
      expect(parsed_response).to eq([])
    end

    it 'returns an array of bard levels' do
      load_bards
      get '/v1/classes/bard'

      expect(response.status).to eq(200)
      expect(parsed_response.first['subclass']).to eq('Bard')
      expect(parsed_response.length).to eq(5)
    end
  end

  describe 'GET /v1/classes/bard/:level' do
    it 'returns a 404 with an invalid level' do
      load_bards
      get '/v1/classes/bard/99'
      expect(response.status).to eq(404)
      expect(parsed_response['path']).to eq('/v1/classes/bard/99')
    end

    it 'returns an array of level specefic class entries' do
      load_bards
      get '/v1/classes/bard/20'

      expect(response.status).to eq(200)
      expect(parsed_response.map{|resp| resp['subclass']}).to eq(['College of Lore', 'College of Valor'])
      expect(parsed_response.length).to eq(2)
    end
  end

  describe 'GET /v1/classes/bard/:subclass' do
    it 'returns a 404 with an invalid subclass' do
      load_bards
      get '/v1/classes/bard/drummer'
      expect(response.status).to eq(404)
      expect(parsed_response['path']).to eq('/v1/classes/bard/drummer')
    end

    it 'returns an array of berserker subclass levels' do
      load_bards
      get '/v1/classes/bard/college-of-lore'

      expect(response.status).to eq(200)
      expect(parsed_response.first['subclass']).to eq('College of Lore')
      expect(parsed_response.length).to eq(2)
    end

    it 'returns an array of subclass levels regardless of case' do
      load_bards
      get '/v1/classes/bard/coLLegE-OF-lorE'

      expect(response.status).to eq(200)
      expect(parsed_response.first['subclass']).to eq('College of Lore')
      expect(parsed_response.length).to eq(2)
    end

    it 'returns an array of subclass levels when using friendly urls' do
      load_bards
      get '/v1/classes/bard/college-of-valor'

      expect(response.status).to eq(200)
      expect(parsed_response.first['subclass']).to eq('College of Valor')
      expect(parsed_response.length).to eq(1)
    end
  end

  describe 'GET /v1/classes/bard/:subclass/:level' do
    it 'returns a 404 with an invalid subclass and level' do
      load_bards
      get '/v1/classes/bard/drummer/99'
      expect(response.status).to eq(404)
      expect(parsed_response['path']).to eq('/v1/classes/bard/drummer/99')
    end

    it 'returns a 404 when trying to use text instead of numbers for a level' do
      load_bards
      get '/v1/classes/bard/college-of-lore/nine'
      expect(response.status).to eq(404)
      expect(parsed_response['path']).to eq('/v1/classes/bard/college-of-lore/nine')
    end

    it 'returns a 404 with an invalid subclass level' do
      load_bards
      get '/v1/classes/bard/college-of-lore/99'
      expect(response.status).to eq(404)
      expect(parsed_response['path']).to eq('/v1/classes/bard/college-of-lore/99')
    end

    it 'returns the correct entry based on subclass and model' do
      load_bards
      get '/v1/classes/bard/college-of-lore/20'

      expect(response.status).to eq(200)
      expect(parsed_response['subclass']).to eq('College of Lore')
      expect(parsed_response['level']).to eq(20)
    end

    it 'returns the correct entry based on level if under 3' do
      load_bards
      get '/v1/classes/bard/college-of-lore/2'

      expect(response.status).to eq(200)
      expect(parsed_response['subclass']).to eq('Bard')
      expect(parsed_response['level']).to eq(2)
    end

    it 'returns the correct entry with friendly urls' do
      load_bards
      get '/v1/classes/bard/college-of-valor/20'

      expect(response.status).to eq(200)
      expect(parsed_response['subclass']).to eq('College of Valor')
      expect(parsed_response['level']).to eq(20)
    end
  end
end
