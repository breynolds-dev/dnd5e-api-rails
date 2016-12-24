FactoryGirl.define do
  factory :monk_level_01, class: Level do
    class_name factory: :monk
    subclass 'Monk'
    number 1
    prof_bonus 2
    martial_arts 4
    ki_points 0
    unarmored_movement 0
  end

  factory :monk_level_02, class: Level do
    class_name factory: :monk
    subclass 'Monk'
    number 2
    prof_bonus 2
    martial_arts 4
    ki_points 2
    unarmored_movement 10
  end

  factory :monk_level_19_hand, class: Level do
    class_name factory: :monk
    subclass 'Way of the Open Hand'
    number 19
    prof_bonus 6
    martial_arts 10
    ki_points 19
    unarmored_movement 30
  end

  factory :monk_level_20_hand, class: Level do
    class_name factory: :monk
    subclass 'Way of the Open Hand'
    number 20
    prof_bonus 6
    martial_arts 10
    ki_points 20
    unarmored_movement 30
  end

  factory :monk_level_20_elements, class: Level do
    class_name factory: :monk
    subclass 'Way of the Four Elements'
    number 20
    prof_bonus 6
    martial_arts 10
    ki_points 20
    unarmored_movement 30
  end
end
