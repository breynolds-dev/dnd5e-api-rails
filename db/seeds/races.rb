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
  description: 'Also called deep gnomes, svirfneblin are said to dwell in great cities deep underground. A svirfneblin has wiry, rock-colored skin usually medium brown to brownish gray. Only males are bald; females have stringy gray hair.',
  stats: [0, 1, 0, 2, 0, 0],
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

# == MOUNTAIN DWARF =======================

@mountain_dwarf = Race.create(
  race_name: 'Mountain Dwarf',
  description: 'Also called deep gnomes, svirfneblin are said to dwell in great cities deep underground. A svirfneblin has wiry, rock-colored skin usually medium brown to brownish gray. Only males are bald; females have stringy gray hair.',
  stats: [0, 1, 0, 2, 0, 0],
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

# == HILL DWARF ===========================

@hill_dwarf = Race.create(
  race_name: 'Hill Dwarf',
  description: 'Also called deep gnomes, svirfneblin are said to dwell in great cities deep underground. A svirfneblin has wiry, rock-colored skin usually medium brown to brownish gray. Only males are bald; females have stringy gray hair.',
  stats: [0, 1, 0, 2, 0, 0],
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

# == DUERGAR ==============================

@duergar = Race.create(
  race_name: 'Duergar',
  description: 'Also called deep gnomes, svirfneblin are said to dwell in great cities deep underground. A svirfneblin has wiry, rock-colored skin usually medium brown to brownish gray. Only males are bald; females have stringy gray hair.',
  stats: [0, 1, 0, 2, 0, 0],
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

# == HIGH ELF =============================

@high_elf = Race.create(
  race_name: 'High Elf',
  description: 'Also called deep gnomes, svirfneblin are said to dwell in great cities deep underground. A svirfneblin has wiry, rock-colored skin usually medium brown to brownish gray. Only males are bald; females have stringy gray hair.',
  stats: [0, 1, 0, 2, 0, 0],
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

# == WOOD ELF =============================

@wood_elf = Race.create(
  race_name: 'Wood Elf',
  description: 'Also called deep gnomes, svirfneblin are said to dwell in great cities deep underground. A svirfneblin has wiry, rock-colored skin usually medium brown to brownish gray. Only males are bald; females have stringy gray hair.',
  stats: [0, 1, 0, 2, 0, 0],
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

# == DROW =================================

@drow = Race.create(
  race_name: 'Dark Elf (Drow)',
  description: 'Also called deep gnomes, svirfneblin are said to dwell in great cities deep underground. A svirfneblin has wiry, rock-colored skin usually medium brown to brownish gray. Only males are bald; females have stringy gray hair.',
  stats: [0, 1, 0, 2, 0, 0],
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

# == GENSAI ===============================

@gensai = Race.create(
  race_name: 'Gensai',
  description: 'Also called deep gnomes, svirfneblin are said to dwell in great cities deep underground. A svirfneblin has wiry, rock-colored skin usually medium brown to brownish gray. Only males are bald; females have stringy gray hair.',
  stats: [0, 1, 0, 2, 0, 0],
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

# == DEEP GNOME ===========================
@deep_gnome = Race.create(
  race_name: 'Deep Gnome (Svirfneblin)',
  description: 'Also called deep gnomes, svirfneblin are said to dwell in great cities deep underground. A svirfneblin has wiry, rock-colored skin usually medium brown to brownish gray. Only males are bald; females have stringy gray hair.',
  stats: [0, 1, 0, 2, 0, 0],
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
  stats: [0, 0, 1, 2, 0, 0],
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
  description: 'Also called deep gnomes, svirfneblin are said to dwell in great cities deep underground. A svirfneblin has wiry, rock-colored skin usually medium brown to brownish gray. Only males are bald; females have stringy gray hair.',
  stats: [0, 1, 0, 2, 0, 0],
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

# == LIGHTFOOT HALFLING ===================

@lightfoot_halfling = Race.create(
  race_name: 'Lightfoot Halfling',
  description: 'Also called deep gnomes, svirfneblin are said to dwell in great cities deep underground. A svirfneblin has wiry, rock-colored skin usually medium brown to brownish gray. Only males are bald; females have stringy gray hair.',
  stats: [0, 1, 0, 2, 0, 0],
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

# == STOUT HALFLING========================

@stout_halfling = Race.create(
  race_name: 'Stout Halfling',
  description: 'Also called deep gnomes, svirfneblin are said to dwell in great cities deep underground. A svirfneblin has wiry, rock-colored skin usually medium brown to brownish gray. Only males are bald; females have stringy gray hair.',
  stats: [0, 1, 0, 2, 0, 0],
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

# == GHOSTWISE HALFLING====================

@ghostwise_halfling = Race.create(
  race_name: 'Ghostwise Halfling',
  description: 'Also called deep gnomes, svirfneblin are said to dwell in great cities deep underground. A svirfneblin has wiry, rock-colored skin usually medium brown to brownish gray. Only males are bald; females have stringy gray hair.',
  stats: [0, 1, 0, 2, 0, 0],
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

# == HALF-ELF =============================

@half_elf = Race.create(
  race_name: 'Half-Elf',
  description: 'Also called deep gnomes, svirfneblin are said to dwell in great cities deep underground. A svirfneblin has wiry, rock-colored skin usually medium brown to brownish gray. Only males are bald; females have stringy gray hair.',
  stats: [0, 1, 0, 2, 0, 0],
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

# == HALF-ELF (VARIANT) ===================

@half_elf_variant = Race.create(
  race_name: 'Half-Elf (Variant)',
  description: 'Also called deep gnomes, svirfneblin are said to dwell in great cities deep underground. A svirfneblin has wiry, rock-colored skin usually medium brown to brownish gray. Only males are bald; females have stringy gray hair.',
  stats: [0, 1, 0, 2, 0, 0],
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

# == HALF-ORC =============================

@half_orc = Race.create(
  race_name: 'Half-Orc',
  description: 'Also called deep gnomes, svirfneblin are said to dwell in great cities deep underground. A svirfneblin has wiry, rock-colored skin usually medium brown to brownish gray. Only males are bald; females have stringy gray hair.',
  stats: [0, 1, 0, 2, 0, 0],
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

# == HUMAN ================================

@human = Race.create(
  race_name: 'Human',
  description: 'Also called deep gnomes, svirfneblin are said to dwell in great cities deep underground. A svirfneblin has wiry, rock-colored skin usually medium brown to brownish gray. Only males are bald; females have stringy gray hair.',
  stats: [0, 1, 0, 2, 0, 0],
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

# == TIEFLING =============================

@tiefling = Race.create(
  race_name: 'Tiefling',
  description: 'Also called deep gnomes, svirfneblin are said to dwell in great cities deep underground. A svirfneblin has wiry, rock-colored skin usually medium brown to brownish gray. Only males are bald; females have stringy gray hair.',
  stats: [0, 1, 0, 2, 0, 0],
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
