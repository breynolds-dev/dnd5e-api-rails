require 'rails_helper'

RSpec.describe 'Class Name', type: :request do
  let(:parsed_response) { JSON.parse(response.body) }
  let(:load_classes) do
    FactoryGirl.create(:barbarian)
    FactoryGirl.create(:bard)
    FactoryGirl.create(:fighter)
    FactoryGirl.create(:monk)
    FactoryGirl.create(:ranger)
    FactoryGirl.create(:rogue)
    FactoryGirl.create(:sorcerer)
    FactoryGirl.create(:warlock)
  end



  describe 'GET /v1/classes/' do
    it 'returns an array of classes' do
      load_classes
      get '/v1/classes'

      expect(response.status).to eq(200)
      expect(parsed_response.collect { |cls| cls['name'] }).to eq(
        %w(Barbarian Bard Fighter Monk Ranger Rogue Sorcerer Warlock)
      )
    end
  end

  describe 'GET /v1/classes/barbarian' do
    it 'returns an the barbarian class object' do
      FactoryGirl.create(:barbarian)
      get '/v1/classes/barbarian'

      expect(response.status).to eq(200)
      expect(parsed_response['name']).to eq('Barbarian')
    end

    it 'returns the subclass options for the class object' do
      class_name = FactoryGirl.create(:barbarian)
      class_name.levels.create(
        subclass: 'Berserker',
        number: 20
      )
      class_name.levels.create(
        subclass: 'Totem Warrior',
        number: 20
      )
      get '/v1/classes/barbarian'
      expect(response.status).to eq(200)
      expect(parsed_response['subclasses']).to eq(
        ['Berserker', 'Totem Warrior']
      )
    end
  end
end
