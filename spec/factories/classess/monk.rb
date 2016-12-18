FactoryGirl.define do
  factory :monk_level_01, class: Classes::Monk do
    subclass 'Monk'
    level 1
    prof_bonus 2
    martial_arts 4
    ki_points 0
    unarmored_movement 0
  end

  factory :monk_level_02, class: Classes::Monk do
    subclass 'Monk'
    level 2
    prof_bonus 2
    martial_arts 4
    ki_points 0
    unarmored_movement 0
  end
end
