require 'rails_helper'

RSpec.describe 'Monk', type: :request do
  let(:load_monks) do
    FactoryGirl.create :monk_level_01
    FactoryGirl.create :monk_level_02
    FactoryGirl.create :monk_level_19_hand
    FactoryGirl.create :monk_level_20_hand
    FactoryGirl.create :monk_level_20_elements
  end

  let(:parsed_response) { JSON.parse(response.body) }

  describe 'GET /v1/classes/monk' do
    it 'returns 200 response with an empty database' do
      get '/v1/classes/monk'

      expect(response.status).to eq(200)
      expect(parsed_response).to eq([])
    end

    it 'returns an array of monk levels' do
      load_monks
      get '/v1/classes/monk'

      expect(response.status).to eq(200)
      expect(parsed_response.first['subclass']).to eq('Monk')
      expect(parsed_response.length).to eq(5)
    end
  end

  describe 'GET /v1/classes/monk/:level' do
    it 'returns a 404 with an invalid level' do
      load_monks
      get '/v1/classes/monk/99'
      expect(response.status).to eq(404)
      expect(parsed_response['path']).to eq('/v1/classes/monk/99')
    end

    it 'returns an array of level specefic class entries' do
      load_monks
      get '/v1/classes/monk/20'

      expect(response.status).to eq(200)
      expect(parsed_response.map{|resp| resp['subclass']}).to eq(['Way of the Open Hand', 'Way of the Four Elements'])
      expect(parsed_response.length).to eq(2)
    end
  end

  describe 'GET /v1/classes/monk/:subclass' do
    it 'returns a 404 with an invalid subclass' do
      load_monks
      get '/v1/classes/monk/way-of-the-drunken-master'
      expect(response.status).to eq(404)
      expect(parsed_response['path']).to eq('/v1/classes/monk/way-of-the-drunken-master')
    end

    it 'returns an array of monk subclass levels' do
      load_monks
      get '/v1/classes/monk/way-of-the-open-hand'

      expect(response.status).to eq(200)
      expect(parsed_response.first['subclass']).to eq('Way of the Open Hand')
      expect(parsed_response.length).to eq(2)
    end

    it 'returns an array of subclass levels regardless of case' do
      load_monks
      get '/v1/classes/monk/wAy-of-tHe-oPEn-hANd'

      expect(response.status).to eq(200)
      expect(parsed_response.first['subclass']).to eq('Way of the Open Hand')
      expect(parsed_response.length).to eq(2)
    end

    it 'returns an array of subclass levels when using friendly urls' do
      load_monks
      get '/v1/classes/monk/way-of-the-four-elements'

      expect(response.status).to eq(200)
      expect(parsed_response.first['subclass']).to eq('Way of the Four Elements')
      expect(parsed_response.length).to eq(1)
    end
  end

  describe 'GET /v1/classes/monk/:subclass/:level' do
    it 'returns a 404 with an invalid subclass and level' do
      load_monks
      get '/v1/classes/monk/way-of-the-drunken-master/99'
      expect(response.status).to eq(404)
      expect(parsed_response['path']).to eq('/v1/classes/monk/way-of-the-drunken-master/99')
    end

    it 'returns a 404 when trying to use text instead of numbers for a level' do
      load_monks
      get '/v1/classes/monk/way-of-the-open-hand/nine'
      expect(response.status).to eq(404)
      expect(parsed_response['path']).to eq('/v1/classes/monk/way-of-the-open-hand/nine')
    end

    it 'returns a 404 with an invalid subclass level' do
      load_monks
      get '/v1/classes/monk/way-of-the-open-hand/99'
      expect(response.status).to eq(404)
      expect(parsed_response['path']).to eq('/v1/classes/monk/way-of-the-open-hand/99')
    end

    it 'returns the correct entry based on subclass and model' do
      load_monks
      get '/v1/classes/monk/way-of-the-open-hand/20'

      expect(response.status).to eq(200)
      expect(parsed_response['subclass']).to eq('Way of the Open Hand')
      expect(parsed_response['level']).to eq(20)
    end

    it 'returns the correct entry based on level if under 3' do
      load_monks
      get '/v1/classes/monk/way-of-the-open-hand/2'

      expect(response.status).to eq(200)
      expect(parsed_response['subclass']).to eq('Monk')
      expect(parsed_response['level']).to eq(2)
    end

    it 'returns the correct entry with friendly urls' do
      load_monks
      get '/v1/classes/monk/way-of-the-four-elements/20'

      expect(response.status).to eq(200)
      expect(parsed_response['subclass']).to eq('Way of the Four Elements')
      expect(parsed_response['level']).to eq(20)
    end
  end
end
