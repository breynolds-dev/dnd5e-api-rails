# == DRAGONBORN ================================================================

RacialTrait.create(
  race_id: Race.find_by(name: 'Dragonborn').id,
  trait_id: Trait.find_by(race_name: 'Breath Weapon').id
)

RacialTrait.create(
  race_id: Race.find_by(name: 'Dragonborn').id,
  trait_id: Trait.find_by(race_name: 'Draconic Ancestry').id
)

RacialTrait.create(
  race_id: Race.find_by(name: 'Dragonborn').id,
  trait_id: Trait.find_by(race_name: 'Draconic Resistance').id
)

# == MOUNTAIN DWARF ============================================================

# Data

# == HILL DWARF ================================================================

# Data

# == DUERGAR ===================================================================

# Data

# == HIGH ELF ==================================================================

RacialTrait.create(
  race_id: Race.find_by(subrace: 'High Elf').id,
  trait_id: Trait.find_by(race_name: 'Elvish Darkvision').id
)

RacialTrait.create(
  race_id: Race.find_by(subrace: 'High Elf').id,
  trait_id: Trait.find_by(race_name: 'Keen Senses').id
)

RacialTrait.create(
  race_id: Race.find_by(subrace: 'High Elf').id,
  trait_id: Trait.find_by(race_name: 'Trance').id
)

RacialTrait.create(
  race_id: Race.find_by(subrace: 'High Elf').id,
  trait_id: Trait.find_by(race_name: 'Fae Ancestry').id
)

RacialTrait.create(
  race_id: Race.find_by(subrace: 'High Elf').id,
  trait_id: Trait.find_by(race_name: 'Elven Weapon Training').id
)

RacialTrait.create(
  race_id: Race.find_by(subrace: 'High Elf').id,
  trait_id: Trait.find_by(race_name: 'Extra Language of Choice').id
)

# == WOOD ELF ==================================================================

RacialTrait.create(
  race_id: Race.find_by(subrace: 'Wood Elf').id,
  trait_id: Trait.find_by(race_name: 'Elvish Darkvision').id
)

RacialTrait.create(
  race_id: Race.find_by(subrace: 'Wood Elf').id,
  trait_id: Trait.find_by(race_name: 'Keen Senses').id
)

RacialTrait.create(
  race_id: Race.find_by(subrace: 'Wood Elf').id,
  trait_id: Trait.find_by(race_name: 'Trance').id
)

RacialTrait.create(
  race_id: Race.find_by(subrace: 'Wood Elf').id,
  trait_id: Trait.find_by(race_name: 'Fae Ancestry').id
)

RacialTrait.create(
  race_id: Race.find_by(subrace: 'Wood Elf').id,
  trait_id: Trait.find_by(race_name: 'Elven Weapon Training').id
)

RacialTrait.create(
  race_id: Race.find_by(subrace: 'Wood Elf').id,
  trait_id: Trait.find_by(race_name: 'Fleet of Foot').id
)

RacialTrait.create(
  race_id: Race.find_by(subrace: 'Wood Elf').id,
  trait_id: Trait.find_by(race_name: 'Mask of the Wild').id
)

# == DARK ELF ==================================================================

RacialTrait.create(
  race_id: Race.find_by(subrace: 'Dark Elf').id,
  trait_id: Trait.find_by(race_name: 'Superior Darkvision').id
)

RacialTrait.create(
  race_id: Race.find_by(subrace: 'Dark Elf').id,
  trait_id: Trait.find_by(race_name: 'Keen Senses').id
)

RacialTrait.create(
  race_id: Race.find_by(subrace: 'Dark Elf').id,
  trait_id: Trait.find_by(race_name: 'Trance').id
)

RacialTrait.create(
  race_id: Race.find_by(subrace: 'Dark Elf').id,
  trait_id: Trait.find_by(race_name: 'Fae Ancestry').id
)

RacialTrait.create(
  race_id: Race.find_by(subrace: 'Dark Elf').id,
  trait_id: Trait.find_by(race_name: 'Sunlight Sensitivity').id
)

RacialTrait.create(
  race_id: Race.find_by(subrace: 'Dark Elf').id,
  trait_id: Trait.find_by(race_name: 'Drow Magic').id
)

RacialTrait.create(
  race_id: Race.find_by(subrace: 'Dark Elf').id,
  trait_id: Trait.find_by(race_name: 'Drow Weapon Training').id
)

# == GENSAI ====================================================================

# Data

# == DEEP GNOME ================================================================

RacialTrait.create(
  race_id: Race.find_by(subrace: 'Deep Gnome').id,
  trait_id: Trait.find_by(race_name: 'Superior Darkvision').id
)

RacialTrait.create(
  race_id: Race.find_by(subrace: 'Deep Gnome').id,
  trait_id: Trait.find_by(race_name: 'Gnome Cunning').id
)

RacialTrait.create(
  race_id: Race.find_by(subrace: 'Deep Gnome').id,
  trait_id: Trait.find_by(race_name: 'Stone Camouflage').id
)

# == ROCK GNOME ================================================================

RacialTrait.create(
  race_id: Race.find_by(subrace: 'Rock Gnome').id,
  trait_id: Trait.find_by(race_name: 'Gnomish Darkvision').id
)

RacialTrait.create(
  race_id: Race.find_by(subrace: 'Rock Gnome').id,
  trait_id: Trait.find_by(race_name: 'Gnome Cunning').id
)

RacialTrait.create(
  race_id: Race.find_by(subrace: 'Rock Gnome').id,
  trait_id: Trait.find_by(race_name: 'Artificiers Lore').id
)

RacialTrait.create(
  race_id: Race.find_by(subrace: 'Rock Gnome').id,
  trait_id: Trait.find_by(race_name: 'Tinker').id
)

# == GOLIATH ===================================================================

RacialTrait.create(
    race_id: Race.find_by(subrace: 'Goliath').id,
    trait_id: Trait.find_by(race_name: 'Natural Athlete').id
)

RacialTrait.create(
    race_id: Race.find_by(subrace: 'Goliath').id,
    trait_id: Trait.find_by(race_name: 'Stones Endurance').id
)

RacialTrait.create(
    race_id: Race.find_by(subrace: 'Goliath').id,
    trait_id: Trait.find_by(race_name: 'Powerful Build').id
)

RacialTrait.create(
    race_id: Race.find_by(subrace: 'Goliath').id,
    trait_id: Trait.find_by(race_name: 'Mountain Born').id
)

# == LIGHTFOOT HALFLING ========================================================

# Data

# == STOUT HALFLING=============================================================

# Data

# == GHOSTWISE HALFLING=========================================================

# Data

# == HALF-ELF ==================================================================

RacialTrait.create(
  race_id: Race.find_by(name: 'Half Elf').id,
  trait_id: Trait.find_by(race_name: 'Extra Language of Choice').id
)

# == HALF-ORC ==================================================================

# Data

# == HUMAN =====================================================================

RacialTrait.create(
  race_id: Race.find_by(name: 'Human').id,
  trait_id: Trait.find_by(race_name: 'Extra Language of Choice').id
)

# == TIEFLING ==================================================================

# Data

# == AARAKOCRA =================================================================

RacialTrait.create(
    race_id: Race.find_by(name: 'Aarakocra').id,
    trait_id: Trait.find_by(race_name: 'Flight').id
)

RacialTrait.create(
    race_id: Race.find_by(name: 'Aarakocra').id,
    trait_id: Trait.find_by(race_name: 'Talons').id
)
