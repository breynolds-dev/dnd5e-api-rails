FactoryGirl.define do
  factory :warlock_level_01, class: Classes::Warlock do
    subclass 'Warlock'
    level 1
    prof_bonus 2
    cantrips_known 2
    spells_known 2
    spell_slots 1
    slot_level 1
    invocations_known 0
  end

  factory :warlock_level_02, class: Classes::Warlock do
    subclass 'Warlock'
    level 2
    prof_bonus 2
    cantrips_known 2
    spells_known 2
    spell_slots 1
    slot_level 1
    invocations_known 0
  end

  factory :warlock_level_19_archfey, class: Classes::Warlock do
    subclass 'Archfey'
    level 19
    prof_bonus 6
    cantrips_known 4
    spells_known 15
    spell_slots 4
    slot_level 5
    invocations_known 8
  end

  factory :warlock_level_20_archfey, class: Classes::Warlock do
    subclass 'Archfey'
    level 20
    prof_bonus 6
    cantrips_known 4
    spells_known 15
    spell_slots 4
    slot_level 5
    invocations_known 8
  end

  factory :warlock_level_20_great, class: Classes::Warlock do
    subclass 'Great One'
    level 20
    prof_bonus 6
    cantrips_known 4
    spells_known 15
    spell_slots 4
    slot_level 5
    invocations_known 8
  end
end
