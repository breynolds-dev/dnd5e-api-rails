FactoryGirl.define do
  factory :common, class: :language do
    name 'Common'
    script 'Common'
  end

  factory :draconic, class: :language do
    name 'Draconic'
    script 'Draconic'
  end

  factory :dwarven, class: :language do
    name 'Dwarven'
    script 'Dwarven'
  end

  factory :goblin, class: :language do
    name 'Goblin'
    script 'Dwarven'
  end

  factory :infernal, class: :language do
    name 'Infernal'
    script 'Infernal'
  end
end
