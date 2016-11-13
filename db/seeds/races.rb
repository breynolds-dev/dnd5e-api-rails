# == TRAIT ===========================
@rockgnome_darkvision = Trait.create(
  race_name: 'Darkvision',
  description: 'Accustomed to life underground, you have superior vision in dark and dim conditions. You can see in dim light within 60 feet of you as if it were bright light, and in darkness as if it were dim light. You can’t discern color in darkness, only shades of gray',
  range: '60'
)

@deepgnome_darkvision = Trait.create(
  race_name: 'Superior Darkvision',
  description: 'Accustomed to life underground, you have superior vision in dark and dim conditions. You can see in dim light within 60 feet of you as if it were bright light, and in darkness as if it were dim light. You can’t discern color in darkness, only shades of gray',
  range: '120'
)

@highelf_darkvision = Trait.create(
  race_name: 'Darkvision',
  description: 'Accustomed to twilit forests and the night sky, you have superior vision in dark and dim conditions. You can see in dim light within 60 feet of you as if it were bright light, and in darkness as if it were dim light. You can’t discern color in darkness, only shades of gray',
  range: '60'
)

@extra_language = Trait.create(
  race_name: 'Extra Language of Choice',
  description: 'You can speak, read, and write one extra language of your choice.',
  range: 'Self'
)

@gnome_cunning = Trait.create(
  race_name: 'Gnome Cunning',
  description: 'You have advantage on all Intelligence, Wisdom, and Charisma saving throws against magic.',
  range: 'Self'
)

@artificers_lore = Trait.create(
  race_name: 'Artificiers Lore',
  description: 'Whenever you make an Intelligence (History) check related to magic items, alchemical objects, or technological devices, you can add twice your proficiency bonus, instead of any proficiency bonus you normally apply.',
  range: 'Self'
)

@tinker = Trait.create(
  race_name: 'Tinker',
  description: 'You have proficiency with artisan’s tools (tinker’s tools). Using those tools, you can spend 1 hour and 10 gp worth of materials to construct a Tiny clockwork device (AC 5, 1 hp). The device ceases to function after 24 hours (unless you spend 1 hour repairing it to keep the device functioning), or when you use your action to dismantle it; at that time, you can reclaim the materials used to create it. You can have up to three such devices active at a time. When you create a device, choose one of the following options: Clockwork Toy: This toy is a clockwork animal, monster, or person, such as a frog, mouse, bird, dragon, or soldier. When placed on the ground, the toy moves 5 feet across the ground on each of your turns in a random direction. It makes noises as appropriate to the creature it represents. Fire Starter: The device produces a miniature flame, which you can use to light a candle, torch, or campfire. Using the device requires your action. Music Box: When opened, this music box plays a single song at a moderate volume. The box stops playing when it reaches the song’s end or when it is closed.',
  range: 'Self'
)

@stone_camouflage = Trait.create(
  race_name: 'Stone Camouflage',
  description: 'You have advantage on Dexterity (stealth) checks to hide in rocky terrain.',
  range: 'Self'
)

@keen_senses = Trait.create(
  race_name: 'Keen Senses',
  description: 'You have proficiency in the Perception skill.',
  range: 'Self'
)

@trance = Trait.create(
  race_name: 'Trance',
  description: 'Elves don’t need to sleep. Instead, they meditate deeply, remaining semiconscious, for 4 hours a day. (The Common word for such meditation is “trance.”) While meditating, you can dream after a fashion; such dreams are actually mental exercises that have become reflexive through years of practice. After resting in this way, you gain the same benefit that a human does from 8 hours of sleep.',
  range: 'Self'
)

@fae_ancestry = Trait.create(
  race_name: 'Fae Ancestry',
  description: 'You have advantage on saving throws against being Charmed, and magic can’t put you to sleep.',
  range: 'Self'
)

@highelf_weapon_training = Trait.create(
  race_name: 'Elf Weapon Training',
  description: 'You have proficiency with the longsword, shortsword, shortbow, and longbow.',
  range: 'Self'
)

# == LANGUAGES ===========================
@abyssal = Language.create(
  name: 'Abyssal',
  script: 'Infernal'
)

@aquan = Language.create(
  name: 'Aquan',
  script: 'Elvish'
)

@auran = Language.create(
  name: 'Auran',
  script: 'Draconic'
)

@celestial = Language.create(
  name: 'Celestial',
  script: 'Celestial'
)

@common = Language.create(
  name: 'Common',
  script: 'Common'
)

@deep_speech = Language.create(
  name: 'Deep Speech',
  script: ''
)

@draconic = Language.create(
  name: 'Draconic',
  script: 'Draconic'
)

@druidic = Language.create(
  name: 'Druidic',
  script: 'Druidic'
)

@dwarvish = Language.create(
  name: 'Dwarvish',
  script: 'Dwarvish'
)

@elvish = Language.create(
  name: 'Elvish',
  script: 'Elvish'
)

@giant = Language.create(
  name: 'Giant',
  script: 'Dwarvish'
)

@gnomish = Language.create(
  name: 'Gnomish',
  script: 'Dwarvish'
)

@goblin = Language.create(
  name: 'Goblin',
  script: 'Dwarvish'
)

@gnoll = Language.create(
  name: 'Gnoll',
  script: 'Common'
)

@halfling = Language.create(
  name: 'Halfling',
  script: 'Common'
)

@ignan = Language.create(
  name: 'Ignan',
  script: 'Draconic'
)

@infernal = Language.create(
  name: 'Infernal',
  script: 'Infernal'
)

@orc = Language.create(
  name: 'Orc',
  script: 'Dwarvish'
)

@primordial = Language.create(
  name: 'Primordial',
  script: 'Dwarvish'
)

@sylvan = Language.create(
  name: 'Sylvan',
  script: 'Elvish'
)

@terran = Language.create(
  name: 'Terran',
  script: 'Dwarvish'
)

@undercommon = Language.create(
  name: 'Undercommon',
  script: 'Elvish'
)

# == DRAGONBORN ===========================

@dragonborn = Race.create(
  race_name: 'Dragonborn',
  description: 'Description goes here',
  stats: '2,0,0,0,0,1',
  age_description: 'Age Description Goes Here',
  age_min: 15,
  age_max: 80,
  size_description: 'Size Description Goes Here',
  size: 'medium',
  min_height: 66,
  max_height: 80,
  min_weight: 175,
  max_weight: 300,
  speed: 30,
  misc: ''
  # traits: draconic_ancestry, breath_weapon
  # feat: none
)

# JoinsTrait.create(
#   race_id: @dragonborn.id,
#   trait_id: @breath_weapon.id
# )
#
# JoinsTrait.create(
#   race_id: @dragonborn.id,
#   trait_id: @draconic_ancestry.id
# )

JoinsLanguage.create(
  race_id: @dragonborn.id,
  language_id: @common.id
)

JoinsLanguage.create(
  race_id: @dragonborn.id,
  language_id: @draconic.id
)

# == MOUNTAIN DWARF =======================

@mountain_dwarf = Race.create(
  race_name: 'Mountain Dwarf',
  description: 'Description goes here',
  stats: '0,1,0,2,0,0',
  age_description: 'Age Description Goes Here',
  age_min: 25,
  age_max: 250,
  size_description: 'Size Description Goes Here',
  size: 'small',
  min_height: 36,
  max_height: 48,
  min_weight: 30,
  max_weight: 50,
  speed: 25,
  misc: ''
  # traits: darkvision, gnome_cunning, stone_camouflage
  # feat: svirfneblin_magic
)

# == HILL DWARF ===========================

@hill_dwarf = Race.create(
  race_name: 'Hill Dwarf',
  description: 'Description goes here',
  stats: '0,1,0,2,0,0',
  age_description: 'Age Description Goes Here',
  age_min: 25,
  age_max: 250,
  size_description: 'Size Description Goes Here',
  size: 'small',
  min_height: 36,
  max_height: 48,
  min_weight: 30,
  max_weight: 50,
  speed: 25,
  misc: ''
  # traits: darkvision, gnome_cunning, stone_camouflage
  # feat: svirfneblin_magic
)

# == DUERGAR ==============================

@duergar = Race.create(
  race_name: 'Duergar',
  description: 'Description goes here',
  stats: '0,1,0,2,0,0',
  age_description: 'Age Description Goes Here',
  age_min: 25,
  age_max: 250,
  size_description: 'Size Description Goes Here',
  size: 'small',
  min_height: 36,
  max_height: 48,
  min_weight: 30,
  max_weight: 50,
  speed: 25,
  misc: ''
  # traits: darkvision, gnome_cunning, stone_camouflage
  # feat: svirfneblin_magic
)

# == HIGH ELF =============================

@high_elf = Race.create(
  race_name: 'High Elf',
  description: 'Description goes here',
  stats: '0,2,0,1,0,0',
  age_description: 'Although elves reach physical maturity at about the same age as humans, the elven understanding of adulthood goes beyond physical growth to encompass worldly experience. An elf typically claims adulthood and an adult name around the age of 100 and can live to be 750 years old.',
  age_min: 100,
  age_max: 750,
  size_description: 'Elves range from under 5 to over 6 feet tall and have slender builds. Your size is Medium.',
  size: 'medium',
  min_height: 54,
  max_height: 72,
  min_weight: 90,
  max_weight: 200,
  speed: 30,
  misc: ''
  # traits: fae_ancestry, trance, keen_senses, extra_language, highelf_darkvision
)

JoinsTrait.create(
  race_id: @high_elf.id,
  trait_id: @highelf_darkvision.id
)

JoinsTrait.create(
  race_id: @high_elf.id,
  trait_id: @keen_senses.id
)

JoinsTrait.create(
  race_id: @high_elf.id,
  trait_id: @trance.id
)

JoinsTrait.create(
  race_id: @high_elf.id,
  trait_id: @fae_ancestry.id
)

JoinsTrait.create(
  race_id: @high_elf.id,
  trait_id: @highelf_weapon_training.id
)

JoinsTrait.create(
  race_id: @high_elf.id,
  trait_id: @extra_language.id
)

JoinsLanguage.create(
  race_id: @high_elf.id,
  language_id: @common.id
)

JoinsLanguage.create(
  race_id: @high_elf.id,
  language_id: @elvish.id
)

# == WOOD ELF =============================

@wood_elf = Race.create(
  race_name: 'Wood Elf',
  description: 'Description goes here',
  stats: '0,1,0,2,0,0',
  age_description: 'Age Description Goes Here',
  age_min: 25,
  age_max: 250,
  size_description: 'Size Description Goes Here',
  size: 'small',
  min_height: 36,
  max_height: 48,
  min_weight: 30,
  max_weight: 50,
  speed: 25,
  misc: ''
  # traits: darkvision, gnome_cunning, stone_camouflage
  # feat: svirfneblin_magic
)

# == DROW =================================

@drow = Race.create(
  race_name: 'Dark Elf (Drow)',
  description: 'Description goes here',
  stats: '0,1,0,2,0,0',
  age_description: 'Age Description Goes Here',
  age_min: 25,
  age_max: 250,
  size_description: 'Size Description Goes Here',
  size: 'small',
  min_height: 36,
  max_height: 48,
  min_weight: 30,
  max_weight: 50,
  speed: 25,
  misc: ''
  # traits: darkvision, gnome_cunning, stone_camouflage
  # feat: svirfneblin_magic
)

# == GENSAI ===============================

@gensai = Race.create(
  race_name: 'Gensai',
  description: 'Description goes here',
  stats: '0,1,0,2,0,0',
  age_description: 'Age Description Goes Here',
  age_min: 25,
  age_max: 250,
  size_description: 'Size Description Goes Here',
  size: 'small',
  min_height: 36,
  max_height: 48,
  min_weight: 30,
  max_weight: 50,
  speed: 25,
  misc: ''
  # traits: darkvision, gnome_cunning, stone_camouflage
  # feat: svirfneblin_magic
)

# == DEEP GNOME ===========================
@deep_gnome = Race.create(
  race_name: 'Deep Gnome (Svirfneblin)',
  description: 'Also called deep gnomes, svirfneblin are said to dwell in great cities deep underground. A svirfneblin has wiry, rock-colored skin usually medium brown to brownish gray. Only males are bald; females have stringy gray hair.',
  stats: '0,1,0,2,0,0',
  age_description: 'Gnomes mature at the same rate humans do, and most are expected to settle down into an adult life by around age 40. They can live 350 to almost 500 years.',
  age_min: 25,
  age_max: 250,
  size_description: 'Gnomes are between 3 and 4 feet tall and average about 40 pounds. Your size is Small.',
  size: 'small',
  min_height: 36,
  max_height: 48,
  min_weight: 30,
  max_weight: 50,
  speed: 25,
  misc: ''
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

JoinsLanguage.create(
  race_id: @deep_gnome.id,
  language_id: @common.id
)

JoinsLanguage.create(
  race_id: @deep_gnome.id,
  language_id: @gnomish.id
)

JoinsLanguage.create(
  race_id: @deep_gnome.id,
  language_id: @undercommon.id
)

# == ROCK GNOME ===========================
@rock_gnome = Race.create(
  race_name: 'Rock Gnome',
  description: 'As a rock gnome, you have a natural inventiveness and hardiness beyond that of other gnomes.',
  stats: '0,0,1,2,0,0',
  age_description: 'Gnomes mature at the same rate humans do, and most are expected to settle down into an adult life by around age 40. They can live 350 to almost 500 years.',
  age_min: 40,
  age_max: 500,
  size_description: 'Gnomes are between 3 and 4 feet tall and average about 40 pounds. Your size is Small.',
  size: 'small',
  min_height: 36,
  max_height: 48,
  min_weight: 30,
  max_weight: 50,
  speed: 25,
  misc: ''
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

JoinsLanguage.create(
  race_id: @rock_gnome.id,
  language_id: @common.id
)

JoinsLanguage.create(
  race_id: @rock_gnome.id,
  language_id: @gnomish.id
)

# == GOLIATH ==============================

@goliath = Race.create(
  race_name: 'Goliath',
  description: 'Description Goes Here',
  stats: '0,1,0,2,0,0',
  age_description: 'Age Description Goes Here',
  age_min: 25,
  age_max: 250,
  size_description: 'Size Description Goes Here',
  size: 'small',
  min_height: 36,
  max_height: 48,
  min_weight: 30,
  max_weight: 50,
  speed: 25,
  misc: ''
  # traits: darkvision, gnome_cunning, stone_camouflage
  # feat: svirfneblin_magic
)

# == LIGHTFOOT HALFLING ===================

@lightfoot_halfling = Race.create(
  race_name: 'Lightfoot Halfling',
  description: 'Description Goes Here',
  stats: '0,1,0,2,0,0',
  age_description: 'Age Description Goes Here',
  age_min: 25,
  age_max: 250,
  size_description: 'Size Description Goes Here',
  size: 'small',
  min_height: 36,
  max_height: 48,
  min_weight: 30,
  max_weight: 50,
  speed: 25,
  misc: ''
  # traits: darkvision, gnome_cunning, stone_camouflage
  # feat: svirfneblin_magic
)

# == STOUT HALFLING========================

@stout_halfling = Race.create(
  race_name: 'Stout Halfling',
  description: 'Description Goes Here',
  stats: '0,1,0,2,0,0',
  age_description: 'Age Description Goes Here',
  age_min: 25,
  age_max: 250,
  size_description: 'Size Description Goes Here',
  size: 'small',
  min_height: 36,
  max_height: 48,
  min_weight: 30,
  max_weight: 50,
  speed: 25,
  misc: ''
  # traits: darkvision, gnome_cunning, stone_camouflage
  # feat: svirfneblin_magic
)

# == GHOSTWISE HALFLING====================

@ghostwise_halfling = Race.create(
  race_name: 'Ghostwise Halfling',
  description: 'Description Goes Here',
  stats: '0,1,0,2,0,0',
  age_description: 'Age Description Goes Here',
  age_min: 25,
  age_max: 250,
  size_description: 'Size Description Goes Here',
  size: 'small',
  min_height: 36,
  max_height: 48,
  min_weight: 30,
  max_weight: 50,
  speed: 25,
  misc: ''
  # traits: darkvision, gnome_cunning, stone_camouflage
  # feat: svirfneblin_magic
)

# == HALF-ELF =============================

@half_elf = Race.create(
  race_name: 'Half-Elf',
  description: 'Description Goes Here',
  stats: '0,1,0,2,0,0',
  age_description: 'Age Description Goes Here',
  age_min: 25,
  age_max: 250,
  size_description: 'Size Description Goes Here',
  size: 'small',
  min_height: 36,
  max_height: 48,
  min_weight: 30,
  max_weight: 50,
  speed: 25,
  misc: ''
  # traits: darkvision, gnome_cunning, stone_camouflage
  # feat: svirfneblin_magic
)

# == HALF-ORC =============================

@half_orc = Race.create(
  race_name: 'Half-Orc',
  description: 'Description Goes Here',
  stats: '0,1,0,2,0,0',
  age_description: 'Age Description Goes Here',
  age_min: 25,
  age_max: 250,
  size_description: 'Size Description Goes Here',
  size: 'small',
  min_height: 36,
  max_height: 48,
  min_weight: 30,
  max_weight: 50,
  speed: 25,
  misc: ''
  # traits: darkvision, gnome_cunning, stone_camouflage
  # feat: svirfneblin_magic
)

# JoinsTrait.create(
#   race_id: @human.id,
#   trait_id: @human_extra_language.id
# )

JoinsLanguage.create(
  race_id: @human.id,
  language_id: @common.id
)

# == HUMAN ================================

@human = Race.create(
  race_name: 'Human',
  description: 'Description Goes Here',
  stats: '1,1,1,1,1,1',
  age_description: 'Age Description Goes Here',
  age_min: 18,
  age_max: 80,
  size_description: 'Size Description Goes Here',
  size: 'medium',
  min_height: 56,
  max_height: 80,
  min_weight: 110,
  max_weight: 250,
  speed: 30,
  misc: ''
  # traits: human_extra_language
)

# JoinsTrait.create(
#   race_id: @human.id,
#   trait_id: @human_extra_language.id
# )

JoinsLanguage.create(
  race_id: @human.id,
  language_id: @common.id
)

# == TIEFLING =============================

@tiefling = Race.create(
  race_name: 'Tiefling',
  description: 'Description Goes Here',
  stats: '0,0,0,1,0,2',
  age_description: 'Age Description Goes Here',
  age_min: 18,
  age_max: 90,
  size_description: 'Size Description Goes Here',
  size: 'medium',
  min_height: 57,
  max_height: 80,
  min_weight: 110,
  max_weight: 250,
  speed: 30,
  misc: 'resist fire'
  # traits: tiefling_darkvision,
  # spells: thaumaturgy, darkness
)

# JoinsTrait.create(
#   race_id: @tiefling.id,
#   trait_id: @tiefling_darkvision.id
# )

JoinsLanguage.create(
  race_id: @tiefling.id,
  language_id: @common.id
)

JoinsLanguage.create(
  race_id: @tiefling.id,
  language_id: @infernal.id
)
