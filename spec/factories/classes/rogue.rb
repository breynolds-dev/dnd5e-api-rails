FactoryGirl.define do
  factory :rogue, class: :class_name do
    name 'Rogue'
    short_description ''
    description ''
    subheading_one ''
    subheading_two ''
    creating_a ''
    quick_build ''
    hit_die 10
    armor_proficiencies 'Light Armor,Medium Armor,Shields'
    weapon_proficiencies 'Simple Weapons,Martial Weapons'
    tools ''
    skill_choice 'Choose two from Athletics, History'
  end

  factory :rogue_no_subclass, class: :subclass do
    name 'Rogue'
    description ''

    factory :rogue_thief do
      name 'Thief'
    end

    factory :rogue_arcane_trickster do
      name 'Arcane Trickster'
    end
  end

  factory :rogue_level_01, class: :level do
    number 1
    prof_bonus 2
    sneak_attack 2

    factory :rogue_level_02 do
      number 2
    end

    factory :rogue_level_19_thief do
      number 19
      prof_bonus 6
      sneak_attack 10
    end

    factory :rogue_level_20_trickster do
      number 20
      prof_bonus 6
      cantrips_known 4
      spells_known 13
      spell_slots_level_01 4
      spell_slots_level_02 3
      spell_slots_level_03 3
      spell_slots_level_04 1
    end
  end
end
