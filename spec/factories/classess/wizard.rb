FactoryGirl.define do
  factory :wizard_level_01, class: Classes::Wizard do
    subclass 'Wizard'
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

  factory :wizard_level_02, class: Classes::Wizard do
    subclass 'Wizard'
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
end
