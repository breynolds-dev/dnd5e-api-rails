FactoryGirl.define do
  factory :warlock_level_01, class: Level do
    class_name factory: :warlock
    subclass 'Warlock'
    number 1
    prof_bonus 2
    cantrips_known 2
    spells_known 2
    spell_slots 1
    slot_level 1
    invocations_known 0
  end

  factory :warlock_level_02, class: Level do
    class_name factory: :warlock
    subclass 'Warlock'
    number 2
    prof_bonus 2
    cantrips_known 2
    spells_known 2
    spell_slots 1
    slot_level 1
    invocations_known 0
  end

  factory :warlock_level_19_archfey, class: Level do
    class_name factory: :warlock
    subclass 'Archfey'
    number 19
    prof_bonus 6
    cantrips_known 4
    spells_known 15
    spell_slots 4
    slot_level 5
    invocations_known 8
  end

  factory :warlock_level_20_archfey, class: Level do
    class_name factory: :warlock
    subclass 'Archfey'
    number 20
    prof_bonus 6
    cantrips_known 4
    spells_known 15
    spell_slots 4
    slot_level 5
    invocations_known 8
  end

  factory :warlock_level_20_great, class: Level do
    class_name factory: :warlock
    subclass 'Great One'
    number 20
    prof_bonus 6
    cantrips_known 4
    spells_known 15
    spell_slots 4
    slot_level 5
    invocations_known 8
  end
end
