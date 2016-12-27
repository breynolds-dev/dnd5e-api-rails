# Barbarian
['Animal Handling', 'Athletics', 'Intimidation',
 'Nature', 'Perception', 'Survival'].each do |skill|
   ClassSkill.create(
     class_name: ClassName.find_by(name: 'Barbarian'),
     skill: Skill.find_by(name: skill)
   )
 end

# Bard has all skill options
Skill.all.each do |skill|
  ClassSkill.create(
    class_name: ClassName.find_by(name: 'Bard'),
    skill: skill
  )
end

# Cleric
['History', 'Insight', 'Medicine', 'Persuasion', 'Religion'].each do |skill|
  ClassSkill.create(
    class_name: ClassName.find_by(name: 'Cleric'),
    skill: Skill.find_by(name: skill)
  )
end

# Druid
['Arcana', 'Animal Handling', 'Insight', 'Medicine', 'Nature', 'Perception', 'Religion', 'Survival'].each do |skill|
  ClassSkill.create(
    class_name: ClassName.find_by(name: 'Druid'),
    skill: Skill.find_by(name: skill)
  )
end

# Fighter
['Acrobatics', 'Animal Handling', 'Athletics', 'History', 'Insight', 'Intimidation', 'Perception', 'Survival'].each do |skill|
  ClassSkill.create(
    class_name: ClassName.find_by(name: 'Fighter'),
    skill: Skill.find_by(name: skill)
  )
end

# Monk
['Acrobatics', 'Athletics', 'History', 'Insight', 'Religion', 'Stealth'].each do |skill|
  ClassSkill.create(
    class_name: ClassName.find_by(name: 'Monk'),
    skill: Skill.find_by(name: skill)
  )
end

# Paladin
['Athletics', 'Insight', 'Intimidation', 'Medicine', 'Persuasion', 'Religion'].each do |skill|
  ClassSkill.create(
    class_name: ClassName.find_by(name: 'Paladin'),
    skill: Skill.find_by(name: skill)
  )
end

# Ranger
['Athletics', 'Insight', 'Investigation', 'Nature', 'Perception', 'Stealth', 'Survival'].each do |skill|
  ClassSkill.create(
    class_name: ClassName.find_by(name: 'Ranger'),
    skill: Skill.find_by(name: skill)
  )
end

# Rogue
['Acrobatics', 'Athletics', 'Deception', 'Insight', 'Intimidation', 'Investigation', 'Perception', 'Performance', 'Persuasion', 'Sleight of Hand', 'Stealth'].each do |skill|
  ClassSkill.create(
    class_name: ClassName.find_by(name: 'Rogue'),
    skill: Skill.find_by(name: skill)
  )
end

# Sorcerer
['Arcana', 'Deception', 'Insight', 'Intimidation', 'Persuasion', 'Religion'].each do |skill|
  ClassSkill.create(
    class_name: ClassName.find_by(name: 'Sorcerer'),
    skill: Skill.find_by(name: skill)
  )
end

# Warlock
['Arcana', 'Deception', 'History', 'Intimidation', 'Investigation', 'Nature', 'Religion'].each do |skill|
  ClassSkill.create(
    class_name: ClassName.find_by(name: 'Warlock'),
    skill: Skill.find_by(name: skill)
  )
end

# Wizard
['Arcana', 'History', 'Insight', 'Investigation', 'Medicine', 'Religion'].each do |skill|
  ClassSkill.create(
    class_name: ClassName.find_by(name: 'Wizard'),
    skill: Skill.find_by(name: skill)
  )
end
