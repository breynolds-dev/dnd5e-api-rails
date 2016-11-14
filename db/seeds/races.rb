# == DRAGONBORN ===========================

@dragonborn = Race.create(
  name: 'Dragonborn',
  description: 'Description goes here',
  speed: 30,
  darkvision: 0,
  ability_bonuses: '2,0,0,0,0,1',
  min_age: 15,
  max_age: 80,
  age_description: 'Age Description Goes Here',
  size: 'medium',
  size_description: 'Size Description Goes Here',
  min_height: 66,
  max_height: 80,
  min_weight: 175,
  max_weight: 300,
  extra_skill_proficiencies: 0,
  weapon_proficiencies: '',
  armor_proficiencies: ''
  # traits: draconic_ancestry, breath_weapon
)

JoinsTrait.create(
  race_id: Race.find_by(name: 'Dragonborn').id,
  trait_id: Trait.find_by(name: 'Breath Weapon').id
)

JoinsTrait.create(
  race_id: Race.find_by(name: 'Dragonborn').id,
  trait_id: @draconic_ancestry.id
)

# == MOUNTAIN DWARF =======================

@mountain_dwarf = Race.create(
  name: 'Dwarf',
  subrace: 'Mountain Dwarf',
  description: 'Description goes here',
  speed: 30,
  darkvision: 0,
  ability_bonuses: '0,1,0,2,0,0',
  min_age: 25,
  max_age: 250,
  age_description: 'Age Description Goes Here',
  size: 'small',
  size_description: 'Size Description Goes Here',
  min_height: 36,
  max_height: 48,
  min_weight: 30,
  max_weight: 50,
  extra_skill_proficiencies: 0,
  weapon_proficiencies: '',
  armor_proficiencies: ''
  # traits: darkvision, gnome_cunning, stone_camouflage
  # feat: svirfneblin_magic
)

# == HILL DWARF ===========================

@hill_dwarf = Race.create(
  name: 'Dwarf',
  subrace: 'Hill Dwarf',
  description: 'Description goes here',
  speed: 30,
  darkvision: 0,
  ability_bonuses: '0,1,0,2,0,0',
  min_age: 25,
  max_age: 250,
  age_description: 'Age Description Goes Here',
  size: 'small',
  size_description: 'Size Description Goes Here',
  min_height: 36,
  max_height: 48,
  min_weight: 30,
  max_weight: 50,
  extra_skill_proficiencies: 0,
  weapon_proficiencies: '',
  armor_proficiencies: ''
  # traits: darkvision, gnome_cunning, stone_camouflage
  # feat: svirfneblin_magic
)

# == DUERGAR ==============================

@duergar = Race.create(
  name: 'Dwarf',
  subrace: 'Duergar',
  description: 'Description goes here',
  speed: 30,
  darkvision: 0,
  ability_bonuses: '0,1,0,2,0,0',
  min_age: 25,
  max_age: 250,
  age_description: 'Age Description Goes Here',
  size: 'small',
  size_description: 'Size Description Goes Here',
  min_height: 36,
  max_height: 48,
  min_weight: 30,
  max_weight: 50,
  extra_skill_proficiencies: 0,
  weapon_proficiencies: '',
  armor_proficiencies: ''
  # traits: darkvision, gnome_cunning, stone_camouflage
  # feat: svirfneblin_magic
)

# == HIGH ELF =============================

@high_elf = Race.create(
  race: 'Elf',
  subrace: 'High Elf',
  description: 'Description goes here',
  speed: 30,
  darkvision: 60,
  ability_bonuses: '0,2,0,1,0,0',
  min_age: 100,
  max_age: 750,
  age_description: 'Although elves reach physical maturity at about the same age as humans, the elven understandi ng of adulthood goes beyond physical growth to encompass worldly experience. An elf typically claims adulthood and an adult name around the age of 100 and can live to be 750 years old.',
  size: 'medium',
  size_description: 'Elves range from under 5 to over 6 feet tall and have slender builds. Your size is Medium.',
  min_height: 54,
  max_height: 72,
  min_weight: 90,
  max_weight: 200,
  extra_skill_proficiencies: 0,
  weapon_proficiencies: '',
  armor_proficiencies: ''
  # traits: fae_ancestry, trance, keen_senses, extra_language, highelf_darkvision
)

JoinsTrait.create(
  race_id: Race.find_by(subrace: 'High Elf').id,
  trait_id: @highelf_darkvision.id
)

JoinsTrait.create(
  race_id: Race.find_by(subrace: 'High Elf').id,
  trait_id: @keen_senses.id
)

JoinsTrait.create(
  race_id: Race.find_by(subrace: 'High Elf').id,
  trait_id: @trance.id
)

JoinsTrait.create(
  race_id: Race.find_by(subrace: 'High Elf').id,
  trait_id: @fae_ancestry.id
)

JoinsTrait.create(
  race_id: Race.find_by(subrace: 'High Elf').id,
  trait_id: @highelf_weapon_training.id
)

JoinsTrait.create(
  race_id: Race.find_by(subrace: 'High Elf').id,
  trait_id: @extra_language.id
)

# == WOOD ELF =============================

@wood_elf = Race.create(
  race: 'Elf',
  subrace: 'Wood Elf',
  description: 'Description goes here',
  speed: 30,
  darkvision: 60,
  ability_bonuses: '0,2,0,0,1,0',
  min_age: 25,
  max_age: 250,
  age_description: 'Age Description Goes Here',
  size: 'medium',
  size_description: 'Size Description Goes Here',
  min_height: 36,
  max_height: 48,
  min_weight: 30,
  max_weight: 50,
  extra_skill_proficiencies: 0,
  weapon_proficiencies: '',
  armor_proficiencies: ''
  # traits: darkvision, gnome_cunning, stone_camouflage
  # feat: svirfneblin_magic
)

# == DROW =================================

@drow = Race.create(
  race: 'Elf',
  subrace: 'Dark Elf (Drow)',
  description: 'Description goes here',
  speed: 30,
  darkvision: 120,
  ability_bonuses: '0,1,0,2,0,0',
  min_age: 25,
  max_age: 250,
  age_description: 'Age Description Goes Here',
  size: 'medium',
  size_description: 'Size Description Goes Here',
  min_height: 36,
  max_height: 48,
  min_weight: 30,
  max_weight: 50,
  extra_skill_proficiencies: 0,
  weapon_proficiencies: '',
  armor_proficiencies: ''
  # traits: darkvision, gnome_cunning, stone_camouflage
  # feat: svirfneblin_magic
)

# == GENSAI ===============================

@gensai = Race.create(
  name: 'Gensai',
  description: 'Description goes here',
  speed: 30,
  darkvision: 0,
  ability_bonuses: '0,1,0,2,0,0',
  min_age: 25,
  max_age: 250,
  age_description: 'Age Description Goes Here',
  size: 'medium',
  size_description: 'Size Description Goes Here',
  min_height: 36,
  max_height: 48,
  min_weight: 30,
  max_weight: 50,
  extra_skill_proficiencies: 0,
  weapon_proficiencies: '',
  armor_proficiencies: ''
)

# == DEEP GNOME ===========================
@deep_gnome = Race.create(
  name: 'Deep Gnome (Svirfneblin)',
  description: 'Also called deep gnomes, svirfneblin are said to dwell in great cities deep underground. A svirfneblin has wiry, rock-colored skin usually medium brown to brownish gray. Only males are bald; females have stringy gray hair.',
  speed: 30,
  darkvision: 0,
  ability_bonuses: '0,1,0,2,0,0',
  min_age: 25,
  max_age: 250,
  age_description: 'Gnomes mature at the same rate humans do, and most are expected to settle down into an adult life by around age 40. They can live 350 to almost 500 years.',
  size: 'small',
  size_description: 'Gnomes are between 3 and 4 feet tall and average about 40 pounds. Your size is Small.',
  min_height: 36,
  max_height: 48,
  min_weight: 30,
  max_weight: 50,
  extra_skill_proficiencies: 0,
  weapon_proficiencies: '',
  armor_proficiencies: ''
  # traits: darkvision, gnome_cunning, stone_camouflage
  # feat: svirfneblin_magic
)

JoinsTrait.create(
  race_id: @deep_gnome.id,
  trait_id: @deepgnome_darkvision.id
)

JoinsTrait.create(
  race_id: @deep_gnome.id,
  trait_id: @gnome_cunning.id
)

JoinsTrait.create(
  race_id: @deep_gnome.id,
  trait_id: @stone_camouflage.id
)

# == ROCK GNOME ===========================
@rock_gnome = Race.create(
  name: 'Rock Gnome',
  description: 'As a rock gnome, you have a natural inventiveness and hardiness beyond that of other gnomes.',
  speed: 30,
  darkvision: 0,
  ability_bonuses: '0,0,1,2,0,0',
  min_age: 40,
  max_age: 500,
  age_description: 'Gnomes mature at the same rate humans do, and most are expected to settle down into an adult life by around age 40. They can live 350 to almost 500 years.',
  size: 'small',
  size_description: 'Gnomes are between 3 and 4 feet tall and average about 40 pounds. Your size is Small.',
  min_height: 36,
  max_height: 48,
  min_weight: 30,
  max_weight: 50,
  extra_skill_proficiencies: 0,
  weapon_proficiencies: '',
  armor_proficiencies: ''
  # traits: darkvision, gnome_cunning, artificers_lore, tinker
)

JoinsTrait.create(
  race_id: @rock_gnome.id,
  trait_id: @rockgnome_darkvision.id
)

JoinsTrait.create(
  race_id: @rock_gnome.id,
  trait_id: @gnome_cunning.id
)

JoinsTrait.create(
  race_id: @rock_gnome.id,
  trait_id: @artificers_lore.id
)

JoinsTrait.create(
  race_id: @rock_gnome.id,
  trait_id: @tinker.id
)

# == GOLIATH ==============================

@goliath = Race.create(
  name: 'Goliath',
  description: 'Description Goes Here',
  speed: 30,
  darkvision: 0,
  ability_bonuses: '0,1,0,2,0,0',
  min_age: 25,
  max_age: 250,
  age_description: 'Age Description Goes Here',
  size: 'small',
  size_description: 'Size Description Goes Here',
  min_height: 36,
  max_height: 48,
  min_weight: 30,
  max_weight: 50,
  extra_skill_proficiencies: 0,
  weapon_proficiencies: '',
  armor_proficiencies: ''
  # traits: darkvision, gnome_cunning, stone_camouflage
  # feat: svirfneblin_magic
)

# == LIGHTFOOT HALFLING ===================

@lightfoot_halfling = Race.create(
  name: 'Lightfoot Halfling',
  description: 'Description Goes Here',
  speed: 30,
  darkvision: 0,
  ability_bonuses: '0,1,0,2,0,0',
  min_age: 25,
  max_age: 250,
  age_description: 'Age Description Goes Here',
  size: 'small',
  size_description: 'Size Description Goes Here',
  min_height: 36,
  max_height: 48,
  min_weight: 30,
  max_weight: 50,
  extra_skill_proficiencies: 0,
  weapon_proficiencies: '',
  armor_proficiencies: ''
  # traits: darkvision, gnome_cunning, stone_camouflage
  # feat: svirfneblin_magic
)

# == STOUT HALFLING========================

@stout_halfling = Race.create(
  name: 'Stout Halfling',
  description: 'Description Goes Here',
  speed: 30,
  darkvision: 0,
  ability_bonuses: '0,1,0,2,0,0',
  min_age: 25,
  max_age: 250,
  age_description: 'Age Description Goes Here',
  size: 'small',
  size_description: 'Size Description Goes Here',
  min_height: 36,
  max_height: 48,
  min_weight: 30,
  max_weight: 50,
  extra_skill_proficiencies: 0,
  weapon_proficiencies: '',
  armor_proficiencies: ''
  # traits: darkvision, gnome_cunning, stone_camouflage
  # feat: svirfneblin_magic
)

# == GHOSTWISE HALFLING====================

@ghostwise_halfling = Race.create(
  name: 'Ghostwise Halfling',
  description: 'Description Goes Here',
  speed: 30,
  darkvision: 0,
  ability_bonuses: '0,1,0,2,0,0',
  min_age: 25,
  max_age: 250,
  age_description: 'Age Description Goes Here',
  size: 'small',
  size_description: 'Size Description Goes Here',
  min_height: 36,
  max_height: 48,
  min_weight: 30,
  max_weight: 50,
  extra_skill_proficiencies: 0,
  weapon_proficiencies: '',
  armor_proficiencies: ''
  # traits: darkvision, gnome_cunning, stone_camouflage
  # feat: svirfneblin_magic
)

# == HALF-ELF =============================

@half_elf = Race.create(
  name: 'Half-Elf',
  description: 'Description Goes Here',
  speed: 30,
  darkvision: 0,
  ability_bonuses: '0,1,0,2,0,0',
  min_age: 25,
  max_age: 250,
  age_description: 'Age Description Goes Here',
  size: 'medium',
  size_description: 'Size Description Goes Here',
  min_height: 36,
  max_height: 48,
  min_weight: 30,
  max_weight: 50,
  extra_skill_proficiencies: 0,
  weapon_proficiencies: '',
  armor_proficiencies: ''
  # traits: darkvision, gnome_cunning, stone_camouflage
  # feat: svirfneblin_magic
)

# == HALF-ORC =============================

@half_orc = Race.create(
  name: 'Half-Orc',
  description: 'Description Goes Here',
  speed: 30,
  darkvision: 0,
  ability_bonuses: '0,1,0,2,0,0',
  min_age: 25,
  max_age: 250,
  age_description: 'Age Description Goes Here',
  size: 'medium',
  size_description: 'Size Description Goes Here',
  min_height: 36,
  max_height: 48,
  min_weight: 30,
  max_weight: 50,
  extra_skill_proficiencies: 0,
  weapon_proficiencies: '',
  armor_proficiencies: ''
  # traits: darkvision, gnome_cunning, stone_camouflage
  # feat: svirfneblin_magic
)

# JoinsTrait.create(
#   race_id: Race.find_by(name: 'Half-Orc').id,
#   trait_id: @human_extra_language.id
# )

# == HUMAN ================================

@human = Race.create(
  name: 'Human',
  description: 'Description Goes Here',
  speed: 30,
  darkvision: 0,
  ability_bonuses: '1,1,1,1,1,1',
  min_age: 18,
  max_age: 80,
  age_description: 'Age Description Goes Here',
  size: 'medium',
  size_description: 'Size Description Goes Here',
  min_height: 56,
  max_height: 80,
  min_weight: 110,
  max_weight: 250,
  extra_skill_proficiencies: 0,
  weapon_proficiencies: '',
  armor_proficiencies: ''
  # traits: human_extra_language
)

# JoinsTrait.create(
#   race_id: @human.id,
#   trait_id: @human_extra_language.id
# )

# == TIEFLING =============================

@tiefling = Race.create(
  name: 'Tiefling',
  description: 'Description Goes Here',
  speed: 30,
  darkvision: 0,
  ability_bonuses: '0,0,0,1,0,2',
  min_age: 18,
  max_age: 90,
  age_description: 'Age Description Goes Here',
  size: 'medium',
  size_description: 'Size Description Goes Here',
  min_height: 57,
  max_height: 80,
  min_weight: 110,
  max_weight: 250,
  extra_skill_proficiencies: 0,
  weapon_proficiencies: '',
  armor_proficiencies: ''
  # traits: tiefling_darkvision, resist_fire
  # spells: thaumaturgy, darkness
)

# JoinsTrait.create(
#   race_id: Race.find_by(name: 'Tiefling').id,
#   trait_id: @tiefling_darkvision.id
# )

# JoinsTrait.create(
#   race_id: Race.find_by(name: 'Tiefling').id,
#   trait_id: @resist_fire.id
# )
