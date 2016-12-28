FactoryGirl.define do
  factory :barbarian_berserker, class: :subclass do
    class_name factory: :barbarian
    name 'Berserker'
    description ''
  end

  factory :barbarian_totem_warrior, class: :subclass do
    class_name factory: :barbarian
    name 'Totem Warrior'
    description ''
  end
end
