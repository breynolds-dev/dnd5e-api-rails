FactoryGirl.define do
  factory :barbarian_level_01, class: Level do
    class_name factory: :barbarian
    subclass 'Barbarian'
    number 1
    prof_bonus 2
    rage_count 1
    rage_damage_bonus 2
  end

  factory :barbarian_level_02, class: Level do
    class_name factory: :barbarian
    subclass 'Barbarian'
    number 2
    prof_bonus 2
    rage_count 2
    rage_damage_bonus 2
  end

  factory :barbarian_level_19_berserker, class: Level do
    class_name factory: :barbarian
    subclass 'Berserker'
    number 19
    prof_bonus 2
    rage_count 2
    rage_damage_bonus 2
  end

  factory :barbarian_level_20_berserker, class: Level do
    class_name factory: :barbarian
    subclass 'Berserker'
    number 20
    prof_bonus 2
    rage_count 2
    rage_damage_bonus 2
  end

  factory :barbarian_level_20_totem, class: Level do
    class_name factory: :barbarian
    subclass 'Totem Warrior'
    number 20
    prof_bonus 2
    rage_count 2
    rage_damage_bonus 2
  end
end
