FactoryGirl.define do
  factory :rogue_level_01, class: Classes::Rogue do
    subclass 'Rogue'
    level 1
    prof_bonus 2
    sneak_attack 1
  end

  factory :rogue_level_02, class: Classes::Rogue do
    subclass 'Rogue'
    level 2
    prof_bonus 2
    sneak_attack 1
  end
end
