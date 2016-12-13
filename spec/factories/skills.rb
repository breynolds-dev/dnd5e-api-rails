FactoryGirl.define do
  factory :athletics, class: :skill do
    name 'Athletics'
    ability 'Strength'
    description 'Your Athletics (Strength)'
  end

  factory :charisma, class: :skill do
    name 'Deception'
    ability 'Charisma'
    description 'Your Charisma (Deception)'
  end

  factory :history, class: :skill do
    name 'History'
    ability 'Intelligence'
    description 'Your Intelligence (History)'
  end
end
