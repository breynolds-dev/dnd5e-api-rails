FactoryGirl.define do
  factory :cleric_level_01, class: Classes::Cleric do
    subclass 'Cleric'
    level 1
    prof_bonus 2
    cantrips_known 4
    spell_slots_level_01 2
    spell_slots_level_02 0
    spell_slots_level_03 0
    spell_slots_level_04 0
    spell_slots_level_05 0
    spell_slots_level_06 0
    spell_slots_level_07 0
    spell_slots_level_08 0
    spell_slots_level_09 0
  end

  factory :cleric_level_02, class: Classes::Cleric do
    subclass 'Cleric'
    level 2
    prof_bonus 2
    cantrips_known 4
    spell_slots_level_01 2
    spell_slots_level_02 0
    spell_slots_level_03 0
    spell_slots_level_04 0
    spell_slots_level_05 0
    spell_slots_level_06 0
    spell_slots_level_07 0
    spell_slots_level_08 0
    spell_slots_level_09 0
  end

  factory :cleric_level_19_life, class: Classes::Cleric do
    subclass 'Life'
    level 19
    prof_bonus 6
    cantrips_known 5
    spell_slots_level_01 4
    spell_slots_level_02 3
    spell_slots_level_03 3
    spell_slots_level_04 3
    spell_slots_level_05 3
    spell_slots_level_06 2
    spell_slots_level_07 1
    spell_slots_level_08 1
    spell_slots_level_09 1
  end

  factory :cleric_level_20_life, class: Classes::Cleric do
    subclass 'Life'
    level 20
    prof_bonus 6
    cantrips_known 5
    spell_slots_level_01 4
    spell_slots_level_02 3
    spell_slots_level_03 3
    spell_slots_level_04 3
    spell_slots_level_05 3
    spell_slots_level_06 2
    spell_slots_level_07 2
    spell_slots_level_08 1
    spell_slots_level_09 1
  end

  factory :cleric_level_20_tempest, class: Classes::Cleric do
    subclass 'Tempest'
    level 20
    prof_bonus 6
    cantrips_known 5
    spell_slots_level_01 4
    spell_slots_level_02 3
    spell_slots_level_03 3
    spell_slots_level_04 3
    spell_slots_level_05 3
    spell_slots_level_06 2
    spell_slots_level_07 2
    spell_slots_level_08 1
    spell_slots_level_09 1
  end
end
