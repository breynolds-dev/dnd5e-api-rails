FactoryGirl.define do
  factory :fighter_level_01, class: Classes::Fighter do
    subclass 'Fighter'
    level 1
    prof_bonus 2
  end

  factory :fighter_level_02, class: Classes::Fighter do
    subclass 'Fighter'
    level 2
    prof_bonus 2
  end

  factory :fighter_level_19_eldritch, class: Classes::Fighter do
    subclass 'Eldritch Knight'
    level 19
    prof_bonus 6
    cantrips_known 4
    spells_known 12
    spell_slots_level_01 4
    spell_slots_level_02 3
    spell_slots_level_03 3
    spell_slots_level_04 1
  end

  factory :fighter_level_20_eldritch, class: Classes::Fighter do
    subclass 'Eldritch Knight'
    level 20
    prof_bonus 6
    cantrips_known 4
    spells_known 13
    spell_slots_level_01 4
    spell_slots_level_02 3
    spell_slots_level_03 3
    spell_slots_level_04 1
  end

  factory :fighter_level_20_champion, class: Classes::Fighter do
    subclass 'Champion'
    level 20
    prof_bonus 2
  end
end
