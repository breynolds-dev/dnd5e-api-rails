FactoryGirl.define do
  factory :rogue_level_01, class: :level do
    subclass factory: :rogue_no_subclass
    number 1
    prof_bonus 2
    sneak_attack 1
  end

  factory :rogue_level_20_trickster, class: :level do
    subclass factory: :rogue_arcane_trickster
    number 20
    prof_bonus 6
    sneak_attack 10
    cantrips_known 4
    spells_known 13
    spell_slots_level_01 4
    spell_slots_level_02 3
    spell_slots_level_03 3
    spell_slots_level_04 1
  end

  factory :fighter_level_01, class: :level do
    subclass factory: :fighter_no_subclass
    number 1
    prof_bonus 2
  end

  factory :fighter_level_20_eldritch, class: :level do
    subclass factory: :fighter_eldritch_knight
    number 20
    prof_bonus 6
    cantrips_known 4
    spells_known 13
    spell_slots_level_01 4
    spell_slots_level_02 3
    spell_slots_level_03 3
    spell_slots_level_04 1
  end

  factory :paladin_level_02, class: :level do
    subclass factory: :paladin_no_subclass
    number 2
    prof_bonus 2
    spell_slots_level_01 2
    spell_slots_level_02 0
    spell_slots_level_03 0
    spell_slots_level_04 0
    spell_slots_level_05 0
  end

  factory :ranger_level_02, class: :level do
    subclass factory: :ranger_no_subclass
    number 2
    prof_bonus 2
    spells_known 2
    spell_slots_level_01 2
    spell_slots_level_02 0
    spell_slots_level_03 0
    spell_slots_level_04 0
    spell_slots_level_05 0
  end

  factory :wizard_level_01, class: :level do
    subclass factory: :wizard_no_subclass
    number 1
    prof_bonus 3
    cantrips_known 3
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
end
