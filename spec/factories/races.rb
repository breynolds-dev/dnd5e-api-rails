FactoryGirl.define do
  factory :dragonborn, class: :race do
    name 'Dragonborn'
    desc 'Born of dragons as their name proclaims'
    speed 30
    ability_bonuses '2,0,0,0,0,1'
    min_age 15
    max_age 80
    age_description 'Young dragonborn grow quickly.'
    size 'medium'
    size_description 'Your size is medium'
    min_height 66
    max_height 80
    min_weight 175
    max_weight 300
    extra_skill_proficiencies 0
    weapon_proficiencies ''
    armor_proficiencies 'Light Armor,Medium Armor,Heavy Armor,Shields'
  end

  factory :human, class: :race do
    name "Human"
    desc 'Born of dragons as their name proclaims'
    speed 30
    ability_bonuses '2,0,0,0,0,1'
    min_age 15
    max_age 80
    age_description 'Young dragonborn grow quickly.'
    size 'medium'
    size_description 'Your size is medium'
    min_height 66
    max_height 80
    min_weight 175
    max_weight 300
    extra_skill_proficiencies 0
    weapon_proficiencies ''
    armor_proficiencies 'Light Armor,Medium Armor,Heavy Armor,Shields'
  end

  factory :elf, class: :race do
    name "Elf"
    desc 'Born of dragons as their name proclaims'
    speed 30
    ability_bonuses '2,0,0,0,0,1'
    min_age 15
    max_age 80
    age_description 'Young dragonborn grow quickly.'
    size 'medium'
    size_description 'Your size is medium'
    min_height 66
    max_height 80
    min_weight 175
    max_weight 300
    extra_skill_proficiencies 0
    weapon_proficiencies ''
    armor_proficiencies 'Light Armor,Medium Armor,Heavy Armor,Shields'
  end

end
