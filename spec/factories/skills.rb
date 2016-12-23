FactoryGirl.define do
  factory :athletics, class: :skill do
    name 'Athletics'
    desc 'Your Athletics (Strength)'
    ability factory: :strength
  end

  factory :animal_handling, class: :skill do
    name 'Animal Handling'
    desc 'Your Animal Handling (Wisdom)'
    ability factory: :dexterity
  end

  factory :deception, class: :skill do
    name 'Deception'
    desc 'Your Deception (Charisma)'
    ability factory: :charisma
  end

  factory :history, class: :skill do
    name 'History'
    desc 'Your History (Intelligence)'
    ability factory: :dexterity
  end

  factory :stealth, class: :skill do
    name 'Stealth'
    desc 'Your Stealth (Dexterity)'
    ability factory: :dexterity
  end
end
