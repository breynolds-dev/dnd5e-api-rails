FactoryGirl.define do
  factory :athletics, class: :skill do
    name 'Athletics'
    ability 'Strength'
    desc 'Your Athletics (Strength)'
  end

  factory :animal_handling, class: :skill do
    name 'Animal Handling'
    ability 'Wisdom'
    desc 'Your Animal Handling (Wisdom)'
  end

  factory :deception, class: :skill do
    name 'Deception'
    ability 'Charisma'
    desc 'Your Deception (Charisma)'
  end

  factory :history, class: :skill do
    name 'History'
    ability 'Intelligence'
    desc 'Your History (Intelligence)'
  end

  factory :stealth, class: :skill do
    name 'Stealth'
    ability 'Dexterity'
    desc 'Your Stealth (Dexterity)'
  end
end
