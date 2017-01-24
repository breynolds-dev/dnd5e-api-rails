FactoryGirl.define do
  factory :athlete, class: :feat do
    name 'Athlete'
    description 'You have undergone extensive physical training to gain the following benefits:'
  end

  factory :elemental_adept, class: :feat do
    name 'Elemental Adept'
    prerequisites 'The ability to case at least one spell'
    description 'When you gain this feat, choose one of the following'
  end

  factory :grappler, class: :feat do
    name 'Grappler'
    prerequisites 'Strength 13 or higher'
    description 'You have developed the skills necessary to hold'
  end
end
