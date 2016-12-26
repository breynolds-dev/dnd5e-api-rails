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
end
