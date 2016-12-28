require 'rails_helper'

RSpec.describe 'Levels', type: :request do
  let(:parsed_response) { JSON.parse(response.body) }
  let(:load_barbarians) do
    class_name = FactoryGirl.create(:barbarian)
    class_name.levels.create(subclass: 'Barbarian', number: 1)
    class_name.levels.create(subclass: 'Barbarian', number: 2,
                             rage_count: 2)
    class_name.levels.create(subclass: 'Berserker', number: 19,
                             rage_count: 6, rage_damage_bonus: '+4')
    class_name.levels.create(subclass: 'Berserker', number: 20,
                             rage_count: 0, rage_damage_bonus: '+4')
    class_name.levels.create(subclass: 'Totem Warrior', number: 20,
                             rage_count: 0, rage_damage_bonus: '+4')
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

  describe 'GET /v1/classes/:class_name/:level' do
    it 'returns a 404 with an invalid level' do
      load_barbarians
      get '/v1/classes/barbarian/99'

      expect(response.status).to eq(404)
      expect(parsed_response['path']).to eq('/v1/classes/barbarian/99')
    end

    it 'returns an array of level specefic class entries' do
      load_barbarians
      get '/v1/classes/barbarian/levels/20'

      expect(response.status).to eq(200)
      expect(parsed_response.collect { |resp| resp['subclass'] }).to eq(
        ['Berserker', 'Totem Warrior']
      )
      expect(parsed_response.length).to eq(2)
    end
  end

  describe 'GET /v1/classes/:class_name/:subclass/:level' do
    it 'returns a 404 with an invalid subclass and level' do
      load_barbarians
      get '/v1/classes/barbarian/rager/99'
      expect(response.status).to eq(404)
      expect(parsed_response['path']).to eq('/v1/classes/barbarian/rager/99')
    end

    it 'returns a 404 when trying to use text instead of numbers for a level' do
      load_barbarians
      get '/v1/classes/barbarian/berserker/nine'
      expect(response.status).to eq(404)
      expect(parsed_response['path']).to eq('/v1/classes/barbarian/berserker/nine')
    end

    it 'returns a 404 with an invalid subclass level' do
      load_barbarians
      get '/v1/classes/barbarian/berserker/99'
      expect(response.status).to eq(404)
      expect(parsed_response['path']).to eq('/v1/classes/barbarian/berserker/99')
    end

    it 'returns the correct entry based on subclass and model' do
      load_barbarians
      get '/v1/classes/barbarian/Berserker/20'

      expect(response.status).to eq(200)
      expect(parsed_response['subclass']).to eq('Berserker')
      expect(parsed_response['level']).to eq(20)
      expect(parsed_response['rage_count']).to eq('Unlimited')
      expect(parsed_response['rage_damage_bonus']).to eq('+4')
      expect(parsed_response['links']['base_class']).to eq(
        'http://5e-api.com/v1/classes/barbarian'
      )
      expect(parsed_response['links']['subclass']).to eq(
        'http://5e-api.com/v1/classes/barbarian/berserker'
      )
      expect(parsed_response['links']['self']).to eq(
        'http://5e-api.com/v1/classes/barbarian/berserker/20'
      )
    end

    it 'returns the correct entry based on level if under 3' do
      load_barbarians
      get '/v1/classes/barbarian/Berserker/2'

      expect(response.status).to eq(200)
      expect(parsed_response['base_class']).to eq('Barbarian')
      expect(parsed_response['subclass']).to eq('Barbarian')
      expect(parsed_response['level']).to eq(2)
      expect(parsed_response['rage_count']).to eq('2')
      expect(parsed_response['links']['base_class']).to eq(
        'http://5e-api.com/v1/classes/barbarian'
      )
      expect(parsed_response['links']['subclass']).to_not be_present
      expect(parsed_response['links']['self']).to eq(
        'http://5e-api.com/v1/classes/barbarian/2'
      )
    end

    it 'returns the correct entry with friendly urls' do
      load_barbarians
      get '/v1/classes/barbarian/totem-warrior/20'
      expect(response.status).to eq(200)
      expect(parsed_response['base_class']).to eq('Barbarian')
      expect(parsed_response['subclass']).to eq('Totem Warrior')
      expect(parsed_response['level']).to eq(20)
      expect(parsed_response['links']['base_class']).to eq(
        'http://5e-api.com/v1/classes/barbarian'
      )
      expect(parsed_response['links']['subclass']).to eq(
        'http://5e-api.com/v1/classes/barbarian/totem-warrior'
      )
      expect(parsed_response['links']['self']).to eq(
        'http://5e-api.com/v1/classes/barbarian/totem-warrior/20'
      )
    end

    it 'returns the correct entry for a fighter' do
      FactoryGirl.create(:fighter_level_01)
      get '/v1/classes/fighter/1'
      expect(response.status).to eq(200)
      fighter = parsed_response
      expect(fighter['base_class']).to eq('Fighter')
      expect(fighter['subclass']).to eq('Fighter')
      expect(fighter['level']).to eq(1)
      expect(fighter['cantrips_known']).to_not be_present
      expect(fighter['spell_slots_level']).to_not be_present
      expect(fighter['links']['base_class']).to eq(
        'http://5e-api.com/v1/classes/fighter'
      )
      expect(fighter['links']['self']).to eq(
        'http://5e-api.com/v1/classes/fighter/1'
      )
    end

    it 'returns the correct entry for a eldritch knight' do
      FactoryGirl.create(:fighter_level_20_eldritch)
      get '/v1/classes/fighter/eldritch-knight/20'

      expect(response.status).to eq(200)
      fighter = parsed_response
      expect(fighter['base_class']).to eq('Fighter')
      expect(fighter['subclass']).to eq('Eldritch Knight')
      expect(fighter['level']).to eq(20)
      expect(fighter['cantrips_known']).to eq(4)
      expect(fighter['spells_known']).to eq(13)
      spell_slots = fighter['spell_slots_level']
      expect(spell_slots.keys).to eq(%w(1 2 3 4))
      expect(spell_slots['1']).to eq(4)
      expect(fighter['links']['base_class']).to eq(
        'http://5e-api.com/v1/classes/fighter'
      )
      expect(fighter['links']['subclass']).to eq(
        'http://5e-api.com/v1/classes/fighter/eldritch-knight'
      )
      expect(fighter['links']['self']).to eq(
        'http://5e-api.com/v1/classes/fighter/eldritch-knight/20'
      )
    end

    it 'returns the correct entry for a paladin' do
      FactoryGirl.create(:paladin_level_02)
      get '/v1/classes/paladin/2'

      expect(response.status).to eq(200)
      paladin = parsed_response
      expect(paladin['base_class']).to eq('Paladin')
      expect(paladin['subclass']).to eq('Paladin')
      expect(paladin['level']).to eq(2)
      expect(paladin['cantrips_known']).to_not be_present
      expect(paladin['spells_known']).to_not be_present
      spell_slots = paladin['spell_slots_level']
      expect(spell_slots.keys).to eq(%w(1 2 3 4 5))
      expect(spell_slots['1']).to eq(2)
      expect(paladin['links']['base_class']).to eq(
        'http://5e-api.com/v1/classes/paladin'
      )
      expect(paladin['links']['self']).to eq(
        'http://5e-api.com/v1/classes/paladin/2'
      )
    end

    it 'returns the correct entry for a ranger' do
      FactoryGirl.create(:ranger_level_02)
      get '/v1/classes/ranger/2'

      expect(response.status).to eq(200)
      ranger = parsed_response
      expect(ranger['base_class']).to eq('Ranger')
      expect(ranger['subclass']).to eq('Ranger')
      expect(ranger['level']).to eq(2)
      expect(ranger['cantrips_known']).to eq(0)
      expect(ranger['spells_known']).to eq(2)
      spell_slots = ranger['spell_slots_level']
      expect(spell_slots.keys).to eq(%w(1 2 3 4 5))
      expect(spell_slots['1']).to eq(2)
      expect(ranger['links']['base_class']).to eq(
        'http://5e-api.com/v1/classes/ranger'
      )
      expect(ranger['links']['self']).to eq(
        'http://5e-api.com/v1/classes/ranger/2'
      )
    end

    it 'returns the correct entry for a rogue' do
      FactoryGirl.create(:rogue_level_01)
      get '/v1/classes/rogue/1'
      expect(response.status).to eq(200)
      rogue = parsed_response
      expect(rogue['base_class']).to eq('Rogue')
      expect(rogue['subclass']).to eq('Rogue')
      expect(rogue['level']).to eq(1)
      expect(rogue['sneak_attack']).to eq('1d6')
      expect(rogue['cantrips_known']).to_not be_present
      expect(rogue['spell_slots_level']).to_not be_present
      expect(rogue['links']['base_class']).to eq(
        'http://5e-api.com/v1/classes/rogue'
      )
      expect(rogue['links']['self']).to eq(
        'http://5e-api.com/v1/classes/rogue/1'
      )
    end

    it 'returns the correct entry for a arcane trickster' do
      FactoryGirl.create(:rogue_level_20_trickster)
      get '/v1/classes/rogue/arcane-trickster/20'

      expect(response.status).to eq(200)
      rogue = parsed_response
      expect(rogue['base_class']).to eq('Rogue')
      expect(rogue['subclass']).to eq('Arcane Trickster')
      expect(rogue['level']).to eq(20)
      expect(rogue['sneak_attack']).to eq('10d6')
      expect(rogue['cantrips_known']).to eq(4)
      expect(rogue['spells_known']).to eq(13)
      spell_slots = rogue['spell_slots_level']
      expect(spell_slots.keys).to eq(%w(1 2 3 4))
      expect(spell_slots['1']).to eq(4)
      expect(rogue['links']['base_class']).to eq(
        'http://5e-api.com/v1/classes/rogue'
      )
      expect(rogue['links']['subclass']).to eq(
        'http://5e-api.com/v1/classes/rogue/arcane-trickster'
      )
      expect(rogue['links']['self']).to eq(
        'http://5e-api.com/v1/classes/rogue/arcane-trickster/20'
      )
    end

    it 'returns the correct entry for a wizard' do
      FactoryGirl.create(:wizard_level_01)
      get '/v1/classes/wizard/1'

      expect(response.status).to eq(200)
      wizard = parsed_response
      expect(wizard['base_class']).to eq('Wizard')
      expect(wizard['subclass']).to eq('Wizard')
      expect(wizard['level']).to eq(1)
      expect(wizard['cantrips_known']).to eq(3)
      spell_slots = wizard['spell_slots_level']
      expect(spell_slots.keys).to eq(%w(1 2 3 4 5 6 7 8 9))
      expect(spell_slots['1']).to eq(2)
      expect(spell_slots['9']).to eq(0)
      expect(wizard['links']['base_class']).to eq(
        'http://5e-api.com/v1/classes/wizard'
      )
      expect(wizard['links']['self']).to eq(
        'http://5e-api.com/v1/classes/wizard/1'
      )
    end
  end
end
