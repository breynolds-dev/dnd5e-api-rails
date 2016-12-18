FactoryGirl.define do
  factory :ranger_level_01, class: Classes::Ranger do
    subclass 'Ranger'
    level 1
    prof_bonus 2
    spells_known 0
    spell_slots_level_01 0
    spell_slots_level_02 0
    spell_slots_level_03 0
    spell_slots_level_04 0
    spell_slots_level_05 0
  end

  factory :ranger_level_02, class: Classes::Ranger do
    subclass 'Ranger'
    level 2
    prof_bonus 2
    spells_known 0
    spell_slots_level_01 0
    spell_slots_level_02 0
    spell_slots_level_03 0
    spell_slots_level_04 0
    spell_slots_level_05 0
  end
end
