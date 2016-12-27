FactoryGirl.define do
  factory :barbarian, class: :class_name do
    name 'Barbarian'
    short_description ''
    description ''
    subheading_one ''
    subheading_two ''
    creating_a ''
    quick_build ''
    hit_die 12
    armor_proficiencies 'Light Armor,Medium Armor,Shields'
    weapon_proficiencies 'Simple Weapons,Martial Weapons'
    tools 'Herbilism Kit,Lute'
    skill_choice 'Choose two from Athletics, History'
  end

  factory :bard, class: :class_name do
    name 'Bard'
    hit_die 8
  end

  factory :fighter, class: :class_name do
    name 'Fighter'
    hit_die 10
  end

  factory :monk, class: :class_name do
    name 'Monk'
    hit_die 8
  end

  factory :ranger, class: :class_name do
    name 'Ranger'
    hit_die 10
  end

  factory :rogue, class: :class_name do
    name 'Rogue'
    hit_die 8
  end

  factory :sorcerer, class: :class_name do
    name 'Sorcerer'
    hit_die 6
  end

  factory :warlock, class: :class_name do
    name 'Warlock'
    hit_die 8
  end
end
