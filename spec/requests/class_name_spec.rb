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
      class_name = FactoryGirl.create(:barbarian)
      class_name.levels.create(subclass: 'Barbarian', number: 1)
      class_name.levels.create(subclass: 'Berserker', number: 20)
      class_name.levels.create(subclass: 'Totem Warrior', number: 20)
      get '/v1/classes'

      expect(response.status).to eq(200)
      expect(parsed_response.first['subclasses'].collect do |cls|
        cls['name']
      end).to eq(['Berserker', 'Totem Warrior'])
    end
  end

  describe 'GET /v1/classes/:class_name/levels' do
    it 'returns a 404 with an invalid class' do
      FactoryGirl.create(:barbarian)
      get '/v1/classes/berserker/levels'
      expect(response.status).to eq(404)
      expect(parsed_response['path']).to eq('/v1/classes/berserker/levels')
    end

    it 'returns a set of subclasses and levels' do
      class_name = FactoryGirl.create(:barbarian)
      class_name.levels.create(subclass: 'Barbarian', number: 1)
      class_name.levels.create(subclass: 'Barbarian', number: 2)
      class_name.levels.create(subclass: 'Berserker', number: 20)
      class_name.levels.create(subclass: 'Totem Warrior', number: 19)
      class_name.levels.create(subclass: 'Totem Warrior', number: 20)
      get '/v1/classes/barbarian/levels'
      expect(response.status).to eq(200)
      expect(parsed_response.keys).to eq(%w(class_name levels))
      levels = parsed_response['levels']
      expect(levels.keys).to eq(%w(berserker totem-warrior))
      expect(levels['berserker'].length).to eq(3)
      expect(levels['berserker'].keys).to eq(%w(1 2 20))
      expect(levels['totem-warrior'].length).to eq(4)
      expect(levels['totem-warrior'].keys).to eq(%w(1 2 19 20))
    end
  end

  describe 'GET /v1/classes/:class_name/levels/:level' do
    it 'returns a 404 with an invalid class' do
      FactoryGirl.create(:barbarian)
      get '/v1/classes/berserker/levels/20'
      expect(response.status).to eq(404)
      expect(parsed_response['path']).to eq('/v1/classes/berserker/levels/20')
    end

    it 'returns an array of objects' do
      class_name = FactoryGirl.create(:barbarian)
      class_name.levels.create(subclass: 'Barbarian', number: 1)
      class_name.levels.create(subclass: 'Berserker', number: 20)
      class_name.levels.create(subclass: 'Totem Warrior', number: 20)
      get '/v1/classes/barbarian/levels/20'

      expect(response.status).to eq(200)
      expect(parsed_response.length).to eq(2)
      expect(parsed_response.first['level']).to eq(20)
      expect(parsed_response.collect do |level|
        level['subclass']
      end).to eq(['Berserker', 'Totem Warrior'])
    end
  end

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
      class_name = FactoryGirl.create(:barbarian)
      class_name.levels.create(subclass: 'Barbarian', number: 1)
      class_name.levels.create(subclass: 'Berserker', number: 20)
      class_name.levels.create(subclass: 'Totem Warrior', number: 20)
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
