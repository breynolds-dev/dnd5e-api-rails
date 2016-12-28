FactoryGirl.define do
  factory :rogue_arcane_trickster, class: :subclass do
    class_name factory: :rogue
    name 'Arcane Trickster'
    description ''
  end

  factory :rogue_thief, class: :subclass do
    class_name factory: :rogue
    name 'Thief'
    description ''
  end

  factory :fighter_eldritch_knight, class: :subclass do
    class_name factory: :fighter
    name 'Eldritch Knight'
    description ''
  end

  factory :wizard_no_subclass, class: :subclass do
    class_name factory: :wizard
    name 'Wizard'
    description ''
  end

  factory :rogue_no_subclass, class: :subclass do
    class_name factory: :rogue
    name 'Rogue'
    description ''
  end

  factory :paladin_no_subclass, class: :subclass do
    class_name factory: :paladin
    name 'Paladin'
    description ''
  end

  factory :fighter_no_subclass, class: :subclass do
    class_name factory: :fighter
    name 'Fighter'
    description ''
  end
end
