FactoryGirl.define do
  factory :barbarian_level_01, class: :barbarian do
    path 'Barbarian'
    level 1
    prof_bonus 2
    rage_count 1
    rage_damage_bonus 2
  end

  factory :barbarian_level_02, class: :barbarian do
    path 'Barbarian'
    level 2
    prof_bonus 2
    rage_count 2
    rage_damage_bonus 2
  end
end