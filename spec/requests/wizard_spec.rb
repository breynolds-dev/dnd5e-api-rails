require 'rails_helper'

RSpec.describe 'Wizard', type: :request do
  let(:load_wizards) do
    FactoryGirl.create :wizard_level_01
    FactoryGirl.create :wizard_level_02
    FactoryGirl.create :wizard_level_19_conjuration
    FactoryGirl.create :wizard_level_20_conjuration
    FactoryGirl.create :wizard_level_20_enchantment
  end

  let(:parsed_response) { JSON.parse(response.body) }

  describe 'GET /v1/classes/wizard' do
    it 'returns 200 response with an empty database' do
      get '/v1/classes/wizard'

      expect(response.status).to eq(200)
      expect(parsed_response).to eq([])
    end

    it 'returns an array of wizard levels' do
      load_wizards
      get '/v1/classes/wizard'

      expect(response.status).to eq(200)
      expect(parsed_response.first['subclass']).to eq('Wizard')
      expect(parsed_response.length).to eq(5)
    end
  end

  describe 'GET /v1/classes/wizard/:level' do
    it 'returns a 404 with an invalid level' do
      load_wizards
      get '/v1/classes/wizard/99'
      expect(response.status).to eq(404)
      expect(parsed_response['path']).to eq('/v1/classes/wizard/99')
    end

    it 'returns an array of level specefic class entries' do
      load_wizards
      get '/v1/classes/wizard/20'

      expect(response.status).to eq(200)
      expect(parsed_response.map{|resp| resp['subclass']}).to eq(['School of Conjuration', 'School of Enchantment'])
      expect(parsed_response.length).to eq(2)
    end
  end

  describe 'GET /v1/classes/wizard/:subclass' do
    it 'returns a 404 with an invalid subclass' do
      load_wizards
      get '/v1/classes/wizard/school-of-hard-knocks'
      expect(response.status).to eq(404)
      expect(parsed_response['path']).to eq('/v1/classes/wizard/school-of-hard-knocks')
    end

    it 'returns an array of subclass levels' do
      load_wizards
      get '/v1/classes/wizard/school-of-conjuration'

      expect(response.status).to eq(200)
      expect(parsed_response.first['subclass']).to eq('School of Conjuration')
      expect(parsed_response.length).to eq(2)
    end

    it 'returns an array of subclass levels regardless of case' do
      load_wizards
      get '/v1/classes/wizard/SChOOl-OF-conJURatION'

      expect(response.status).to eq(200)
      expect(parsed_response.first['subclass']).to eq('School of Conjuration')
      expect(parsed_response.length).to eq(2)
    end

    it 'returns an array of subclass levels when using friendly urls' do
      load_wizards
      get '/v1/classes/wizard/school-of-enchantment'

      expect(response.status).to eq(200)
      expect(parsed_response.first['subclass']).to eq('School of Enchantment')
      expect(parsed_response.length).to eq(1)
    end
  end

  describe 'GET /v1/classes/wizard/:subclass/:level' do
    it 'returns a 404 with an invalid subclass and level' do
      load_wizards
      get '/v1/classes/wizard/school-of-hard-knocks/99'
      expect(response.status).to eq(404)
      expect(parsed_response['path']).to eq('/v1/classes/wizard/school-of-hard-knocks/99')
    end

    it 'returns a 404 with an invalid subclass level' do
      load_wizards
      get '/v1/classes/wizard/school-of-conjuration/99'
      expect(response.status).to eq(404)
      expect(parsed_response['path']).to eq('/v1/classes/wizard/school-of-conjuration/99')
    end

    it 'returns a 404 when trying to use text instead of numbers for a level' do
      load_wizards
      get '/v1/classes/wizard/school-of-conjuration/nine'
      expect(response.status).to eq(404)
      expect(parsed_response['path']).to eq('/v1/classes/wizard/school-of-conjuration/nine')
    end

    it 'returns the correct entry based on subclass and model' do
      load_wizards
      get '/v1/classes/wizard/school-of-conjuration/20'

      expect(response.status).to eq(200)
      expect(parsed_response['subclass']).to eq('School of Conjuration')
      expect(parsed_response['level']).to eq(20)
    end

    it 'returns the correct entry based on level if under 3' do
      load_wizards
      get '/v1/classes/wizard/school-of-conjuration/2'

      expect(response.status).to eq(200)
      expect(parsed_response['subclass']).to eq('Wizard')
      expect(parsed_response['level']).to eq(2)
    end

    it 'returns the correct entry with friendly urls' do
      load_wizards
      get '/v1/classes/wizard/school-of-conjuration/20'

      expect(response.status).to eq(200)
      expect(parsed_response['subclass']).to eq('School of Conjuration')
      expect(parsed_response['level']).to eq(20)
    end
  end
end
