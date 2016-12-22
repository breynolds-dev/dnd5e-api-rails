FactoryGirl.define do
  factory :draconic_ancestry, class: :trait do
    race_name 'Draconic Ancestry'
    description 'You have draconic ancestry'
    range 'self'
  end

  factory :trance, class: :trait do
    race_name 'Trance'
    description 'Elves don’t need to sleep'
    range 'Self'
  end

  factory :tinker, class: :trait do
    race_name 'Tinker'
    description 'You have proficiency with artisan’s tools (tinker’s tools)'
    range 'Self'
  end
end
