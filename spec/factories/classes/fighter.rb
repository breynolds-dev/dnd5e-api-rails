FactoryGirl.define do
  factory :fighter, class: :class_name do
    name 'Fighter'
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

  factory :fighter_no_subclass, class: :subclass do
    name 'Fighter'
    description ''

    factory :fighter_champion do
      name 'Champion'
    end

    factory :fighter_eldritch_knight do
      name 'Eldritch Knight'
    end
  end

  factory :fighter_level_01, class: :level do
    number 1
    prof_bonus 2

    factory :fighter_level_02 do
      number 2
    end

    factory :fighter_level_19_champion do
      number 19
      prof_bonus 6
    end

    factory :fighter_level_20_eldritch do
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
