FactoryGirl.define do
  factory :paladin, class: :class_name do
    name 'Paladin'
    short_description ''
    description ''
    subheading_one ''
    subheading_two ''
    creating_a ''
    quick_build ''
    hit_die 10
    armor_proficiencies 'Light Armor,Medium Armor,Shields'
    weapon_proficiencies 'Simple Weapons,Martial Weapons'
    tools ''
    skill_choice 'Choose two from Athletics, History'
  end

  factory :paladin_no_subclass, class: :subclass do
    name 'Paladin'
    description ''
  end

  factory :paladin_level_01, class: :level do
    number 2
    prof_bonus 2
    spells_known 2
    spell_slots_level_01 2
    spell_slots_level_02 0
    spell_slots_level_03 0
    spell_slots_level_04 0
    spell_slots_level_05 0
  end
end
