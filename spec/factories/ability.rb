FactoryGirl.define do
  factory :strength, class: :ability do
    name 'Strength'
    description 'A character with high Strength usually corresponds with a burly or athletic body, while a character with low Strength might be scrawny or plump.'
    measures 'Natural athleticism, bodily power'
    important_for 'Barbarian, Fighter, Paladin'
  end

  factory :dexterity, class: :ability do
    name 'Dexterity'
    description 'A character with high Dexterity is probably lithe and slim, while a character with low Dexterity might be either gangly and awkward or heavy and thick-fingered.'
    measures 'Physical agility, reflexes, balance, poise'
    important_for 'Monk, Ranger, Rogue'
  end

  factory :charisma, class: :ability do
    name 'Charisma'
    description 'A character with high Charisma exudes confidence, which is usually mixed with a graceful or intimidating presence. A character with a low Charisma might come across as abrasive, inarticulate, or timid.'
    measures 'Confidence, eloquence, leadership'
    important_for 'Bard, Sorcerer, Warlock'
  end
end
