FactoryGirl.define do
  factory :barbarian_level_01, class: :level do
    class_name factory: :barbarian
    subclass 'Barbarian'
    number 1
    prof_bonus 2
    rage_count 0
    rage_damage_bonus 1
  end

  factory :barbarian_level_02, class: :level do
    class_name factory: :barbarian
    subclass 'Barbarian'
    number 2
    prof_bonus 2
    rage_count 0
    rage_damage_bonus 1
  end

  factory :barbarian_level_20_berserker, class: :level do
    class_name factory: :barbarian
    subclass 'Berserker'
    number 20
    prof_bonus 6
    rage_count 0 # convert to "Unlimited via Serializer"
    rage_damage_bonus 4
  end

  factory :barbarian_level_20_totem, class: :level do
    class_name factory: :barbarian
    subclass 'Totem Warrior'
    number 20
    prof_bonus 6
    rage_count 0
    rage_damage_bonus 4
  end

  factory :rogue_level_01, class: :level do
    class_name factory: :rogue
    subclass 'Rogue'
    number 1
    prof_bonus 2
    sneak_attack 1
  end

  factory :rogue_level_20_trickster, class: :level do
    class_name factory: :rogue
    subclass 'Arcane Trickster'
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
    class_name factory: :fighter
    subclass 'Fighter'
    number 1
    prof_bonus 2
  end

  factory :fighter_level_20_eldritch, class: :level do
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

  factory :paladin_level_02, class: :level do
    class_name factory: :paladin
    subclass 'Paladin'
    number 2
    prof_bonus 2
    spell_slots_level_01 2
    spell_slots_level_02 0
    spell_slots_level_03 0
    spell_slots_level_04 0
    spell_slots_level_05 0
  end

  factory :ranger_level_02, class: :level do
    class_name factory: :ranger
    subclass 'Ranger'
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
    class_name factory: :wizard
    subclass 'Wizard'
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
