# == DRAGONBORN ================================================================

JoinsLanguage.create(
  race_id: Race.find_by(name: 'Dragonborn').id,
  language_id: Language.find_by(name: 'Common').id
)

JoinsLanguage.create(
  race_id: Race.find_by(name: 'Dragonborn').id,
  language_id: Language.find_by(name: 'Draconic').id
)

# == MOUNTAIN DWARF ============================================================

JoinsLanguage.create(
  race_id: Race.find_by(subrace: 'Mountain Dwarf').id,
  language_id: Language.find_by(name: 'Common').id
)

JoinsLanguage.create(
  race_id: Race.find_by(subrace: 'Mountain Dwarf').id,
  language_id: Language.find_by(name: 'Dwarvish').id
)

# == HILL DWARF ================================================================

JoinsLanguage.create(
  race_id: Race.find_by(subrace: 'Hill Dwarf').id,
  language_id: Language.find_by(name: 'Common').id
)

JoinsLanguage.create(
  race_id: Race.find_by(subrace: 'Hill Dwarf').id,
  language_id: Language.find_by(name: 'Dwarvish').id
)

# == DUERGAR ===================================================================

JoinsLanguage.create(
  race_id: Race.find_by(subrace: 'Duergar').id,
  language_id: Language.find_by(name: 'Common').id
)

JoinsLanguage.create(
  race_id: Race.find_by(subrace: 'Duergar').id,
  language_id: Language.find_by(name: 'Dwarvish').id
)

JoinsLanguage.create(
  race_id: Race.find_by(subrace: 'Duergar').id,
  language_id: Language.find_by(name: 'Undercommon').id
)

# == HIGH ELF ==================================================================

JoinsLanguage.create(
  race_id: Race.find_by(subrace: 'High Elf').id,
  language_id: Language.find_by(name: 'Common').id
)

JoinsLanguage.create(
  race_id: Race.find_by(subrace: 'High Elf').id,
  language_id: Language.find_by(name: 'Elvish').id
)

# == WOOD ELF ==================================================================

JoinsLanguage.create(
  race_id: Race.find_by(subrace: 'Wood Elf').id,
  language_id: Language.find_by(name: 'Common').id
)

JoinsLanguage.create(
  race_id: Race.find_by(subrace: 'Wood Elf').id,
  language_id: Language.find_by(name: 'Elvish').id
)

# == DROW ======================================================================

JoinsLanguage.create(
  race_id: Race.find_by(subrace: 'Dark Elf (Drow)').id,
  language_id: Language.find_by(name: 'Common').id
)

JoinsLanguage.create(
  race_id: Race.find_by(subrace: 'Dark Elf (Drow)').id,
  language_id: Language.find_by(name: 'Elvish').id
)

JoinsLanguage.create(
  race_id: Race.find_by(subrace: 'Dark Elf (Drow)').id,
  language_id: Language.find_by(name: 'Undercommon').id
)

# == AIR GENSAI ===============================================================

JoinsLanguage.create(
  race_id: Race.find_by(subrace: 'Air Gensai').id,
  language_id: Language.find_by(name: 'Common').id
)

JoinsLanguage.create(
  race_id: Race.find_by(subrace: 'Air Gensai').id,
  language_id: Language.find_by(name: 'Primordial').id
)

# == EARTH GENSAI ==============================================================

JoinsLanguage.create(
  race_id: Race.find_by(subrace: 'Earth Gensai').id,
  language_id: Language.find_by(name: 'Common').id
)

JoinsLanguage.create(
  race_id: Race.find_by(subrace: 'Earth Gensai').id,
  language_id: Language.find_by(name: 'Primordial').id
)

# == FIRE GENSAI ===============================================================

JoinsLanguage.create(
  race_id: Race.find_by(subrace: 'Fire Gensai').id,
  language_id: Language.find_by(name: 'Common').id
)

JoinsLanguage.create(
  race_id: Race.find_by(subrace: 'Fire Gensai').id,
  language_id: Language.find_by(name: 'Primordial').id
)

# == WATER GENSAI ==============================================================

JoinsLanguage.create(
  race_id: Race.find_by(subrace: 'Water Gensai').id,
  language_id: Language.find_by(name: 'Common').id
)

JoinsLanguage.create(
  race_id: Race.find_by(subrace: 'Water Gensai').id,
  language_id: Language.find_by(name: 'Primordial').id
)

# == DEEP GNOME ================================================================

JoinsLanguage.create(
  race_id: Race.find_by(subrace: 'Deep Gnome (Svirfneblin)').id,
  language_id: Language.find_by(name: 'Gnomish').id
)

JoinsLanguage.create(
  race_id: Race.find_by(subrace: 'Deep Gnome (Svirfneblin)').id,
  language_id: Language.find_by(name: 'Undercommon').id
)

JoinsLanguage.create(
  race_id: Race.find_by(subrace: 'Deep Gnome (Svirfneblin)').id,
  language_id: Language.find_by(name: 'Common').id
)

# == ROCK GNOME ================================================================

JoinsLanguage.create(
  race_id: Race.find_by(subrace: 'Rock Gnome').id,
  language_id: Language.find_by(name: 'Common').id
)

JoinsLanguage.create(
  race_id: Race.find_by(subrace: 'Rock Gnome').id,
  language_id: Language.find_by(name: 'Gnomish').id
)

# == GOLIATH ===================================================================

JoinsLanguage.create(
  race_id: Race.find_by(name: 'Goliath').id,
  language_id: Language.find_by(name: 'Common').id
)

JoinsLanguage.create(
  race_id: Race.find_by(name: 'Goliath').id,
  language_id: Language.find_by(name: 'Giant').id
)

# == LIGHTFOOT HALFLING ========================================================

JoinsLanguage.create(
  race_id: Race.find_by(subrace: 'Lightfoot Halfling').id,
  language_id: Language.find_by(name: 'Common').id
)

# == STOUT HALFLING=============================================================

JoinsLanguage.create(
  race_id: Race.find_by(subrace: 'Stout Halfling').id,
  language_id: Language.find_by(name: 'Common').id
)

# == GHOSTWISE HALFLING=========================================================

JoinsLanguage.create(
  race_id: Race.find_by(subrace: 'Ghostwise Halfling').id,
  language_id: Language.find_by(name: 'Common').id
)

# == HALF-ELF ==================================================================

JoinsLanguage.create(
  race_id: Race.find_by(name: 'Half-Elf').id,
  language_id: Language.find_by(name: 'Common').id
)

JoinsLanguage.create(
  race_id: Race.find_by(name: 'Half-Elf').id,
  language_id: Language.find_by(name: 'Elvish').id
)

# == HALF-ORC ==================================================================

JoinsLanguage.create(
  race_id: Race.find_by(name: 'Half-Orc').id,
  language_id: Language.find_by(name: 'Common').id
)

JoinsLanguage.create(
  race_id: Race.find_by(name: 'Half-Orc').id,
  language_id: Language.find_by(name: 'Goblin').id
)

# == HUMAN =====================================================================

JoinsLanguage.create(
  race_id: Race.find_by(name: 'Human').id,
  language_id: Language.find_by(name: 'Common').id
)

# == TIEFLING ==================================================================

JoinsLanguage.create(
  race_id: Race.find_by(name: 'Tiefling').id,
  language_id: Language.find_by(name: 'Common').id
)

JoinsLanguage.create(
  race_id: Race.find_by(name: 'Tiefling').id,
  language_id: Language.find_by(name: 'Infernal').id
)
