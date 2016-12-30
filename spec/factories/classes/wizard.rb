FactoryGirl.define do
  factory :wizard, class: :class_name do
    name 'Wizard'
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

  factory :wizard_no_subclass, class: :subclass do
    name 'Wizard'
    description ''
  end

  factory :wizard_level_01, class: :level do
    number 1
    prof_bonus 3
    cantrips_known 3
    spell_slots_level_01 2
    spell_slots_level_02 0
    spell_slots_level_03 0
    spell_slots_level_04 0
    spell_slots_level_05 0
    spell_slots_level_06 0
    spell_slots_level_07 0
    spell_slots_level_08 0
    spell_slots_level_09 0
  end
end
