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
end
