FactoryGirl.define do
  factory :paladin_level_01, class: Classes::Paladin do
    subclass 'Paladin'
    level 1
    prof_bonus 2
    spell_slots_level_01 0
    spell_slots_level_02 0
    spell_slots_level_03 0
    spell_slots_level_04 0
    spell_slots_level_05 0
  end

  factory :paladin_level_02, class: Classes::Paladin do
    subclass 'Paladin'
    level 2
    prof_bonus 2
    spell_slots_level_01 0
    spell_slots_level_02 0
    spell_slots_level_03 0
    spell_slots_level_04 0
    spell_slots_level_05 0
  end

  factory :paladin_level_19_devotion, class: Classes::Paladin do
    subclass 'Oath of Devotion'
    level 19
    prof_bonus 6
    spell_slots_level_01 4
    spell_slots_level_02 3
    spell_slots_level_03 3
    spell_slots_level_04 3
    spell_slots_level_05 2
  end

  factory :paladin_level_20_devotion, class: Classes::Paladin do
    subclass 'Oath of Devotion'
    level 20
    prof_bonus 6
    spell_slots_level_01 4
    spell_slots_level_02 3
    spell_slots_level_03 3
    spell_slots_level_04 3
    spell_slots_level_05 2
  end

  factory :paladin_level_20_ancients, class: Classes::Paladin do
    subclass 'Oath of the Ancients'
    level 20
    prof_bonus 6
    spell_slots_level_01 4
    spell_slots_level_02 3
    spell_slots_level_03 3
    spell_slots_level_04 3
    spell_slots_level_05 2
  end
end
