FactoryGirl.define do
  factory :barbarian_level_01, class: Classes::Barbarian do
    subclass 'Barbarian'
    level 1
    prof_bonus 2
    rage_count 1
    rage_damage_bonus 2
  end

  factory :barbarian_level_02, class: Classes::Barbarian do
    subclass 'Barbarian'
    level 2
    prof_bonus 2
    rage_count 2
    rage_damage_bonus 2
  end

  factory :barbarian_level_19_berserker, class: Classes::Barbarian do
    subclass 'Berserker'
    level 19
    prof_bonus 2
    rage_count 2
    rage_damage_bonus 2
  end

  factory :barbarian_level_20_berserker, class: Classes::Barbarian do
    subclass 'Berserker'
    level 20
    prof_bonus 2
    rage_count 2
    rage_damage_bonus 2
  end

  factory :barbarian_level_20_totem, class: Classes::Barbarian do
    subclass 'Totem Warrior'
    level 20
    prof_bonus 2
    rage_count 2
    rage_damage_bonus 2
  end
end
