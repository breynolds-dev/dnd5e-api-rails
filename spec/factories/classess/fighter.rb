FactoryGirl.define do
  factory :fighter_level_01, class: Level do
    class_name factory: :fighter
    subclass 'Fighter'
    number 1
    prof_bonus 2
  end

  factory :fighter_level_02, class: Level do
    class_name factory: :fighter
    subclass 'Fighter'
    number 2
    prof_bonus 2
  end

  factory :fighter_level_19_eldritch, class: Level do
    class_name factory: :fighter
    subclass 'Eldritch Knight'
    number 19
    prof_bonus 6
    cantrips_known 4
    spells_known 12
    spell_slots_level_01 4
    spell_slots_level_02 3
    spell_slots_level_03 3
    spell_slots_level_04 1
  end

  factory :fighter_level_20_eldritch, class: Level do
    class_name factory: :fighter
    subclass 'Eldritch Knight'
    number 20
    prof_bonus 6
    cantrips_known 4
    spells_known 13
    spell_slots_level_01 4
    spell_slots_level_02 3
    spell_slots_level_03 3
    spell_slots_level_04 1
  end

  factory :fighter_level_20_champion, class: Level do
    class_name factory: :fighter
    subclass 'Champion'
    number 20
    prof_bonus 2
  end
end
