FactoryGirl.define do
  factory :fighter_level_01, class: Classes::Fighter do
    subclass 'Fighter'
    level 1
    prof_bonus 2
  end

  factory :fighter_level_02, class: Classes::Fighter do
    subclass 'Fighter'
    level 2
    prof_bonus 2
  end
end
