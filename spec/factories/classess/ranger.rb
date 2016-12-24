FactoryGirl.define do
  factory :ranger_level_01, class: Level do
    class_name factory: :ranger
    subclass 'Ranger'
    number 1
    prof_bonus 2
    spells_known 0
    spell_slots_level_01 0
    spell_slots_level_02 0
    spell_slots_level_03 0
    spell_slots_level_04 0
    spell_slots_level_05 0
  end

  factory :ranger_level_02, class: Level do
    class_name factory: :ranger
    subclass 'Ranger'
    number 2
    prof_bonus 2
    spells_known 0
    spell_slots_level_01 0
    spell_slots_level_02 0
    spell_slots_level_03 0
    spell_slots_level_04 0
    spell_slots_level_05 0
  end

  factory :ranger_level_19_hunter, class: Level do
    class_name factory: :ranger
    subclass 'Hunter'
    number 19
    prof_bonus 6
    spells_known 11
    spell_slots_level_01 4
    spell_slots_level_02 3
    spell_slots_level_03 3
    spell_slots_level_04 3
    spell_slots_level_05 2
  end

  factory :ranger_level_20_hunter, class: Level do
    class_name factory: :ranger
    subclass 'Hunter'
    number 20
    prof_bonus 6
    spells_known 11
    spell_slots_level_01 4
    spell_slots_level_02 3
    spell_slots_level_03 3
    spell_slots_level_04 3
    spell_slots_level_05 2
  end

  factory :ranger_level_20_beast, class: Level do
    class_name factory: :ranger
    subclass 'Beast Master'
    number 20
    prof_bonus 6
    spells_known 11
    spell_slots_level_01 4
    spell_slots_level_02 3
    spell_slots_level_03 3
    spell_slots_level_04 3
    spell_slots_level_05 2
  end
end
