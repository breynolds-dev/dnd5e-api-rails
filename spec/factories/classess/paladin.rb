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
end
