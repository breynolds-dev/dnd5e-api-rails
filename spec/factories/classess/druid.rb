FactoryGirl.define do
  factory :druid_level_01, class: Classes::Druid do
    subclass 'Druid'
    level 1
    prof_bonus 2
    cantrips_known 2
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

  factory :druid_level_02, class: Classes::Druid do
    subclass 'Druid'
    level 2
    prof_bonus 2
    cantrips_known 2
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

  factory :druid_level_19_land, class: Classes::Druid do
    subclass 'Circle of the Land'
    level 19
    prof_bonus 6
    cantrips_known 4
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

  factory :druid_level_20_land, class: Classes::Druid do
    subclass 'Circle of the Land'
    level 20
    prof_bonus 6
    cantrips_known 4
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

  factory :druid_level_20_moon, class: Classes::Druid do
    subclass 'Circle of the Moon'
    level 20
    prof_bonus 6
    cantrips_known 4
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
