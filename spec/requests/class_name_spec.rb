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


  describe 'GET /v1/classes/' do
    it 'returns a 404 if the database is empty' do
      get '/v1/classes'
      expect(response.status).to eq(404)
      expect(parsed_response['path']).to eq('/v1/classes/')
    end

    it 'returns an array of classes' do
      load_classes
      get '/v1/classes'
      expect(response.status).to eq(200)
      expect(parsed_response.collect { |cls| cls['name'] }).to eq(
        %w(Barbarian Bard Fighter Monk Ranger Rogue Sorcerer Warlock)
      )
    end

    it 'returns an array of subclasses' do
      load_subclasses
      get '/v1/classes'

      expect(response.status).to eq(200)
      expect(parsed_response.length).to eq(2)
      expect(parsed_response.first['subclasses'].keys).to eq(
        %w(berserker totem-warrior)
      )
      expect(parsed_response.last['subclasses'].keys).to eq(
        %w(arcane-trickster thief)
      )
    end
  end

  describe 'GET /v1/classes/:class_name' do
    it 'returns a class object' do
      FactoryGirl.create(:barbarian)
      get '/v1/classes/barbarian'
      expect(response.status).to eq(200)
      expect(parsed_response['name']).to eq('Barbarian')
    end
  end

  describe 'GET /v1/classes/:class_name' do
    it 'returns a 404 with an invalid class option' do
      FactoryGirl.create(:barbarian)
      get '/v1/classes/berserker'
      expect(response.status).to eq(404)
      expect(parsed_response['path']).to eq('/v1/classes/berserker')
    end

    it 'returns an the barbarian class object' do
      FactoryGirl.create(:barbarian)
      get '/v1/classes/barbarian'
      expect(response.status).to eq(200)
      expect(parsed_response['name']).to eq('Barbarian')
      expect(parsed_response['hit_die']).to eq('d12')
    end

    it 'returns the subclass options for the class object' do
      load_subclasses
      get '/v1/classes/barbarian'
      expect(response.status).to eq(200)
      expect(parsed_response['subclasses'].collect {|subcls| subcls['name'] }).to eq(
        ['Berserker', 'Totem Warrior']
      )
    end

    it 'returns an array of primary class ability choices' do
      ClassPrimaryAbility.create(
        class_name: FactoryGirl.create(:barbarian),
        ability: FactoryGirl.create(:strength)
      )
      get '/v1/classes/barbarian'
      expect(response.status).to eq(200)
      expect(parsed_response['primary_abilities'].collect { |abil| abil['name'] }).to eq(
        ['Strength']
      )
    end

    it 'returns an array of ability saving throws' do
      barb = FactoryGirl.create(:barbarian)
      ClassSavingThrow.create(
        class_name: barb,
        ability: FactoryGirl.create(:strength)
      )
      ClassSavingThrow.create(
        class_name: barb,
        ability: FactoryGirl.create(:dexterity)
      )
      get '/v1/classes/barbarian'
      expect(response.status).to eq(200)
      expect(parsed_response['saving_throws'].collect { |abil| abil['name'] }).to eq(
        %w(Strength Dexterity)
      )
    end

    it 'returns an array of skill choices' do
      barb = FactoryGirl.create(:barbarian)
      ClassSkill.create(
        class_name: barb,
        skill: FactoryGirl.create(:athletics)
      )
      ClassSkill.create(
        class_name: barb,
        skill: FactoryGirl.create(:history)
      )
      get '/v1/classes/barbarian'
      expect(response.status).to eq(200)
      expect(parsed_response['skill_choice_options'].collect { |abil| abil['name'] }).to eq(
        %w(Athletics History)
      )
    end

    it 'returns an array of armor and weapon proficiencies, or tools' do
      FactoryGirl.create(:barbarian)
      get '/v1/classes/barbarian'

      expect(response.status).to eq(200)
      expect(parsed_response['armor_proficiencies']).to eq(
        ['Light Armor', 'Medium Armor', 'Shields']
      )
      expect(parsed_response['weapon_proficiencies']).to eq(
        ['Simple Weapons', 'Martial Weapons']
      )
      expect(parsed_response['tools']).to eq(
        ['Herbilism Kit', 'Lute']
      )
    end
  end
end
