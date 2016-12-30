require 'rails_helper'

RSpec.describe 'Subclasses', type: :request do
  let(:parsed_response) { JSON.parse(response.body) }
  let(:load_subclasses) do
    barbarian = FactoryGirl.create(:barbarian)
    FactoryGirl.create(:barbarian_no_subclass, class_name: barbarian)
    FactoryGirl.create(:barbarian_berserker, class_name: barbarian)
    FactoryGirl.create(:barbarian_totem_warrior, class_name: barbarian)
    rogue = FactoryGirl.create(:rogue)
    FactoryGirl.create(:rogue_no_subclass, class_name: rogue)
    FactoryGirl.create(:rogue_arcane_trickster, class_name: rogue)
    FactoryGirl.create(:rogue_thief, class_name: rogue)
  end
  let(:load_barbarians) do
    barbarian = FactoryGirl.create(:barbarian)
    berserker = FactoryGirl.create(:barbarian_berserker, class_name: barbarian)
    totem = FactoryGirl.create(:barbarian_totem_warrior, class_name: barbarian)
    FactoryGirl.create(:barbarian_level_19, subclass: berserker)
    FactoryGirl.create(:barbarian_level_20, subclass: berserker)
    FactoryGirl.create(:barbarian_level_20, subclass: totem)
  end

  describe 'GET /v1/classes/:class_name/subclasses' do
    it 'returns a 404 with an invalid class' do
      FactoryGirl.create(:barbarian)
      get '/v1/classes/berserker/subclasses'
      expect(response.status).to eq(404)
      expect(parsed_response['path']).to eq('/v1/classes/berserker/subclasses')
    end

    it 'returns an array of subclasses' do
      load_subclasses
      get '/v1/classes/barbarian/subclasses'

      expect(response.status).to eq(200)
      expect(parsed_response['subclasses'].length).to eq(2)
      expect(parsed_response['subclasses'].collect do |subcls|
        subcls['name']
      end).to eq(
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

    it 'returns a collection of berserker subclass levels' do
      load_barbarians
      get '/v1/classes/barbarian/Berserker'

      expect(response.status).to eq(200)
      expect(parsed_response['levels'].keys).to eq(%w(19 20))
      expect(parsed_response['levels'].keys.length).to eq(2)
      expect(parsed_response['levels']['20']).to include(
        '/v1/classes/barbarian/berserker/20'
      )
    end

    it 'returns a collection of subclass levels regardless of case' do
      load_barbarians
      get '/v1/classes/barbarian/beRseRKEr'

      expect(response.status).to eq(200)
      expect(parsed_response['levels'].keys).to eq(%w(19 20))
      expect(parsed_response['levels'].keys.length).to eq(2)
      expect(parsed_response['levels']['20']).to include(
        '/v1/classes/barbarian/berserker/20'
      )
    end

    it 'returns an array of subclass levels when using friendly urls' do
      load_barbarians
      get '/v1/classes/barbarian/totem-warrior'

      expect(response.status).to eq(200)
      expect(parsed_response['levels']['20']).to include(
        '/v1/classes/barbarian/totem-warrior/20'
      )
    end
  end


end
