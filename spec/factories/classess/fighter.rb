FactoryGirl.define do
  factory :fighter_level_01, class: :fighter do
    archetype 'Fighter'
    level 1
    prof_bonus 2
  end

  factory :fighter_level_02, class: :fighter do
    archetype 'Fighter'
    level 2
    prof_bonus 2
  end
end
