# == DRAGONBORN ================================================================

RacialLanguage.create(
  race_id: Race.find_by(name: 'Dragonborn').id,
  language_id: Language.find_by(name: 'Common').id
)

RacialLanguage.create(
  race_id: Race.find_by(name: 'Dragonborn').id,
  language_id: Language.find_by(name: 'Draconic').id
)

# == MOUNTAIN DWARF ============================================================

RacialLanguage.create(
  race_id: Race.find_by(subrace: 'Mountain Dwarf').id,
  language_id: Language.find_by(name: 'Common').id
)

RacialLanguage.create(
  race_id: Race.find_by(subrace: 'Mountain Dwarf').id,
  language_id: Language.find_by(name: 'Dwarvish').id
)

# == HILL DWARF ================================================================

RacialLanguage.create(
  race_id: Race.find_by(subrace: 'Hill Dwarf').id,
  language_id: Language.find_by(name: 'Common').id
)

RacialLanguage.create(
  race_id: Race.find_by(subrace: 'Hill Dwarf').id,
  language_id: Language.find_by(name: 'Dwarvish').id
)

# == DUERGAR ===================================================================

RacialLanguage.create(
  race_id: Race.find_by(subrace: 'Duergar').id,
  language_id: Language.find_by(name: 'Common').id
)

RacialLanguage.create(
  race_id: Race.find_by(subrace: 'Duergar').id,
  language_id: Language.find_by(name: 'Dwarvish').id
)

RacialLanguage.create(
  race_id: Race.find_by(subrace: 'Duergar').id,
  language_id: Language.find_by(name: 'Undercommon').id
)

# == HIGH ELF ==================================================================

RacialLanguage.create(
  race_id: Race.find_by(subrace: 'High Elf').id,
  language_id: Language.find_by(name: 'Common').id
)

RacialLanguage.create(
  race_id: Race.find_by(subrace: 'High Elf').id,
  language_id: Language.find_by(name: 'Elvish').id
)

# == WOOD ELF ==================================================================

RacialLanguage.create(
  race_id: Race.find_by(subrace: 'Wood Elf').id,
  language_id: Language.find_by(name: 'Common').id
)

RacialLanguage.create(
  race_id: Race.find_by(subrace: 'Wood Elf').id,
  language_id: Language.find_by(name: 'Elvish').id
)

# == DROW ======================================================================

RacialLanguage.create(
  race_id: Race.find_by(subrace: 'Dark Elf').id,
  language_id: Language.find_by(name: 'Common').id
)

RacialLanguage.create(
  race_id: Race.find_by(subrace: 'Dark Elf').id,
  language_id: Language.find_by(name: 'Elvish').id
)

RacialLanguage.create(
  race_id: Race.find_by(subrace: 'Dark Elf').id,
  language_id: Language.find_by(name: 'Undercommon').id
)

# == AIR GENSAI ===============================================================

RacialLanguage.create(
  race_id: Race.find_by(subrace: 'Air Gensai').id,
  language_id: Language.find_by(name: 'Common').id
)

RacialLanguage.create(
  race_id: Race.find_by(subrace: 'Air Gensai').id,
  language_id: Language.find_by(name: 'Primordial').id
)

# == EARTH GENSAI ==============================================================

RacialLanguage.create(
  race_id: Race.find_by(subrace: 'Earth Gensai').id,
  language_id: Language.find_by(name: 'Common').id
)

RacialLanguage.create(
  race_id: Race.find_by(subrace: 'Earth Gensai').id,
  language_id: Language.find_by(name: 'Primordial').id
)

# == FIRE GENSAI ===============================================================

RacialLanguage.create(
  race_id: Race.find_by(subrace: 'Fire Gensai').id,
  language_id: Language.find_by(name: 'Common').id
)

RacialLanguage.create(
  race_id: Race.find_by(subrace: 'Fire Gensai').id,
  language_id: Language.find_by(name: 'Primordial').id
)

# == WATER GENSAI ==============================================================

RacialLanguage.create(
  race_id: Race.find_by(subrace: 'Water Gensai').id,
  language_id: Language.find_by(name: 'Common').id
)

RacialLanguage.create(
  race_id: Race.find_by(subrace: 'Water Gensai').id,
  language_id: Language.find_by(name: 'Primordial').id
)

# == DEEP GNOME ================================================================

RacialLanguage.create(
  race_id: Race.find_by(subrace: 'Deep Gnome').id,
  language_id: Language.find_by(name: 'Gnomish').id
)

RacialLanguage.create(
  race_id: Race.find_by(subrace: 'Deep Gnome').id,
  language_id: Language.find_by(name: 'Undercommon').id
)

RacialLanguage.create(
  race_id: Race.find_by(subrace: 'Deep Gnome').id,
  language_id: Language.find_by(name: 'Common').id
)

# == ROCK GNOME ================================================================

RacialLanguage.create(
  race_id: Race.find_by(subrace: 'Rock Gnome').id,
  language_id: Language.find_by(name: 'Common').id
)

RacialLanguage.create(
  race_id: Race.find_by(subrace: 'Rock Gnome').id,
  language_id: Language.find_by(name: 'Gnomish').id
)

# == GOLIATH ===================================================================

RacialLanguage.create(
  race_id: Race.find_by(name: 'Goliath').id,
  language_id: Language.find_by(name: 'Common').id
)

RacialLanguage.create(
  race_id: Race.find_by(name: 'Goliath').id,
  language_id: Language.find_by(name: 'Giant').id
)

# == LIGHTFOOT HALFLING ========================================================

RacialLanguage.create(
  race_id: Race.find_by(subrace: 'Lightfoot Halfling').id,
  language_id: Language.find_by(name: 'Common').id
)

# == STOUT HALFLING=============================================================

RacialLanguage.create(
  race_id: Race.find_by(subrace: 'Stout Halfling').id,
  language_id: Language.find_by(name: 'Common').id
)

# == GHOSTWISE HALFLING=========================================================

RacialLanguage.create(
  race_id: Race.find_by(subrace: 'Ghostwise Halfling').id,
  language_id: Language.find_by(name: 'Common').id
)

# == HALF-ELF ==================================================================

RacialLanguage.create(
  race_id: Race.find_by(name: 'Half Elf').id,
  language_id: Language.find_by(name: 'Common').id
)

RacialLanguage.create(
  race_id: Race.find_by(name: 'Half Elf').id,
  language_id: Language.find_by(name: 'Elvish').id
)

# == HALF-ORC ==================================================================

RacialLanguage.create(
  race_id: Race.find_by(name: 'Half Orc').id,
  language_id: Language.find_by(name: 'Common').id
)

RacialLanguage.create(
  race_id: Race.find_by(name: 'Half Orc').id,
  language_id: Language.find_by(name: 'Goblin').id
)

# == HUMAN =====================================================================

RacialLanguage.create(
  race_id: Race.find_by(name: 'Human').id,
  language_id: Language.find_by(name: 'Common').id
)

# == TIEFLING ==================================================================

RacialLanguage.create(
  race_id: Race.find_by(name: 'Tiefling').id,
  language_id: Language.find_by(name: 'Common').id
)

RacialLanguage.create(
  race_id: Race.find_by(name: 'Tiefling').id,
  language_id: Language.find_by(name: 'Infernal').id
)
