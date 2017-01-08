FactoryGirl.define do

  factory :dragonborn_strength, class: :racial_ability_bonus do
    ability factory: :strength
    bonus 2
  end

  factory :dragonborn_charisma, class: :racial_ability_bonus do
    ability factory: :charisma
    bonus 1
  end

end
