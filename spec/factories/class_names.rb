FactoryGirl.define do
  factory :bard, class: :class_name do
    name 'Bard'
    hit_die 8
  end

  factory :fighter, class: :class_name do
    name 'Fighter'
    hit_die 10
  end

  factory :monk, class: :class_name do
    name 'Monk'
    hit_die 8
  end

  factory :paladin, class: :class_name do
    name 'Paladin'
    hit_die 10
  end

  factory :ranger, class: :class_name do
    name 'Ranger'
    hit_die 10
  end

  factory :rogue, class: :class_name do
    name 'Rogue'
    hit_die 8
  end

  factory :sorcerer, class: :class_name do
    name 'Sorcerer'
    hit_die 6
  end

  factory :warlock, class: :class_name do
    name 'Warlock'
    hit_die 8
  end

  factory :wizard, class: :class_name do
    name 'Wizard'
    hit_die 8
  end
end
