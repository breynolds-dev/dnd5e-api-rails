FactoryGirl.define do
  factory :strength, class: :ability do
    name 'Strength'
    desc 'Your Strength'
  end

  factory :dexterity, class: :ability do
    name 'Dexterity'
    desc 'Your Dexterity'
  end

  factory :charisma, class: :ability do
    name 'Charisma'
    dex 'Your Charisma'
  end
end
