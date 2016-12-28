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

  factory :barbarian_no_subclass, class: :subclass do
    name 'Barbarian'
    description ''

    factory :barbarian_berserker do
      name 'Berserker'
    end

    factory :barbarian_totem_warrior do
      name 'Totem Warrior'
    end
  end

  factory :barbarian_level_01, class: :level do
    subclass factory: :barbarian_no_subclass
    number 1
    prof_bonus 2
    rage_count 0
    rage_damage_bonus 1
  end

  factory :barbarian_level_02, class: :level do
    subclass factory: :barbarian_no_subclass
    number 2
    prof_bonus 2
    rage_count 0
    rage_damage_bonus 1
  end

  factory :barbarian_level_20_berserker, class: :level do
    subclass 'Berserker'
    number 20
    prof_bonus 6
    rage_count 0 # convert to "Unlimited via Serializer"
    rage_damage_bonus 4
  end

  factory :barbarian_level_20_totem, class: :level do
    subclass 'Totem Warrior'
    number 20
    prof_bonus 6
    rage_count 0
    rage_damage_bonus 4
  end
end
