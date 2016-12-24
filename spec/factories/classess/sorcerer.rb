FactoryGirl.define do
  factory :sorcerer_level_01, class: Level do
    class_name factory: :sorcerer
    subclass 'Sorcerer'
    number 1
    prof_bonus 2
    sorcery_points 0
    cantrips_known 4
    spells_known 2
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

  factory :sorcerer_level_02, class: Level do
    class_name factory: :sorcerer
    subclass 'Sorcerer'
    number 2
    prof_bonus 2
    sorcery_points 0
    cantrips_known 4
    spells_known 2
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

  factory :sorcerer_level_19_draconic, class: Level do
    class_name factory: :sorcerer
    subclass 'Draconic Bloodline'
    number 19
    prof_bonus 6
    sorcery_points 19
    cantrips_known 6
    spells_known 15
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

  factory :sorcerer_level_20_draconic, class: Level do
    class_name factory: :sorcerer
    subclass 'Draconic Bloodline'
    number 20
    prof_bonus 6
    sorcery_points 20
    cantrips_known 6
    spells_known 15
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

  factory :sorcerer_level_20_wild, class: Level do
    class_name factory: :sorcerer
    subclass 'Wild Magic'
    number 20
    prof_bonus 6
    sorcery_points 20
    cantrips_known 6
    spells_known 15
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
