rogue = ClassName.find_by(name: 'Rogue')
Level.create(
  class_name: rogue,
  number: 1,
  prof_bonus: 2,
  sneak_attack: 1
)
Level.create(
  class_name: rogue,
  number: 2,
  prof_bonus: 2,
  sneak_attack: 1
)

# == THIEF ================================
rogue = Subclass.find_by(name: 'Thief')
Level.create(
  subclass: rogue,
  number: 3,
  prof_bonus: 2,
  sneak_attack: 2
)
Level.create(
  subclass: rogue,
  number: 4,
  prof_bonus: 2,
  sneak_attack: 2
)
Level.create(
  subclass: rogue,
  number: 5,
  prof_bonus: 3,
  sneak_attack: 3
)
Level.create(
  subclass: rogue,
  number: 6,
  prof_bonus: 3,
  sneak_attack: 3
)
Level.create(
  subclass: rogue,
  number: 7,
  prof_bonus: 3,
  sneak_attack: 4
)
Level.create(
  subclass: rogue,
  number: 8,
  prof_bonus: 3,
  sneak_attack: 4
)
Level.create(
  subclass: rogue,
  number: 9,
  prof_bonus: 4,
  sneak_attack: 5
)
Level.create(
  subclass: rogue,
  number: 10,
  prof_bonus: 4,
  sneak_attack: 5
)
Level.create(
  subclass: rogue,
  number: 11,
  prof_bonus: 4,
  sneak_attack: 6
)
Level.create(
  subclass: rogue,
  number: 12,
  prof_bonus: 4,
  sneak_attack: 6
)
Level.create(
  subclass: rogue,
  number: 13,
  prof_bonus: 5,
  sneak_attack: 7
)
Level.create(
  subclass: rogue,
  number: 14,
  prof_bonus: 5,
  sneak_attack: 7
)
Level.create(
  subclass: rogue,
  number: 15,
  prof_bonus: 5,
  sneak_attack: 8
)
Level.create(
  subclass: rogue,
  number: 16,
  prof_bonus: 5,
  sneak_attack: 8
)
Level.create(
  subclass: rogue,
  number: 17,
  prof_bonus: 6,
  sneak_attack: 9
)
Level.create(
  subclass: rogue,
  number: 18,
  prof_bonus: 6,
  sneak_attack: 9
)
Level.create(
  subclass: rogue,
  number: 19,
  prof_bonus: 6,
  sneak_attack: 10
)
Level.create(
  subclass: rogue,
  number: 20,
  prof_bonus: 6,
  sneak_attack: 10
)

# == ASSASSIN =============================
rogue = Subclass.find_by(name: 'Assassin')
Level.create(
  subclass: rogue,
  number: 3,
  prof_bonus: 2,
  sneak_attack: 2
)
Level.create(
  subclass: rogue,
  number: 4,
  prof_bonus: 2,
  sneak_attack: 2
)
Level.create(
  subclass: rogue,
  number: 5,
  prof_bonus: 3,
  sneak_attack: 3
)
Level.create(
  subclass: rogue,
  number: 6,
  prof_bonus: 3,
  sneak_attack: 3
)
Level.create(
  subclass: rogue,
  number: 7,
  prof_bonus: 3,
  sneak_attack: 4
)
Level.create(
  subclass: rogue,
  number: 8,
  prof_bonus: 3,
  sneak_attack: 4
)
Level.create(
  subclass: rogue,
  number: 9,
  prof_bonus: 4,
  sneak_attack: 5
)
Level.create(
  subclass: rogue,
  number: 10,
  prof_bonus: 4,
  sneak_attack: 5
)
Level.create(
  subclass: rogue,
  number: 11,
  prof_bonus: 4,
  sneak_attack: 6
)
Level.create(
  subclass: rogue,
  number: 12,
  prof_bonus: 4,
  sneak_attack: 6
)
Level.create(
  subclass: rogue,
  number: 13,
  prof_bonus: 5,
  sneak_attack: 7
)
Level.create(
  subclass: rogue,
  number: 14,
  prof_bonus: 5,
  sneak_attack: 7
)
Level.create(
  subclass: rogue,
  number: 15,
  prof_bonus: 5,
  sneak_attack: 8
)
Level.create(
  subclass: rogue,
  number: 16,
  prof_bonus: 5,
  sneak_attack: 8
)
Level.create(
  subclass: rogue,
  number: 17,
  prof_bonus: 6,
  sneak_attack: 9
)
Level.create(
  subclass: rogue,
  number: 18,
  prof_bonus: 6,
  sneak_attack: 9
)
Level.create(
  subclass: rogue,
  number: 19,
  prof_bonus: 6,
  sneak_attack: 10
)
Level.create(
  subclass: rogue,
  number: 20,
  prof_bonus: 6,
  sneak_attack: 10
)

# == ARCANE TRICKSTER =====================
rogue = Subclass.find_by(name: 'Arcane Trickster')
Level.create(
  subclass: rogue,
  number: 3,
  prof_bonus: 2,
  sneak_attack: 2,
  cantrips_known: 3,
  spells_known: 3,
  spell_slots_level_01: 2,
  spell_slots_level_02: 0,
  spell_slots_level_03: 0,
  spell_slots_level_04: 0
)
Level.create(
  subclass: rogue,
  number: 4,
  prof_bonus: 2,
  sneak_attack: 2,
  cantrips_known: 3,
  spells_known: 4,
  spell_slots_level_01: 3,
  spell_slots_level_02: 0,
  spell_slots_level_03: 0,
  spell_slots_level_04: 0
)
Level.create(
  subclass: rogue,
  number: 5,
  prof_bonus: 3,
  sneak_attack: 3,
  cantrips_known: 3,
  spells_known: 4,
  spell_slots_level_01: 3,
  spell_slots_level_02: 0,
  spell_slots_level_03: 0,
  spell_slots_level_04: 0
)
Level.create(
  subclass: rogue,
  number: 6,
  prof_bonus: 3,
  sneak_attack: 3,
  cantrips_known: 3,
  spells_known: 4,
  spell_slots_level_01: 3,
  spell_slots_level_02: 0,
  spell_slots_level_03: 0,
  spell_slots_level_04: 0
)
Level.create(
  subclass: rogue,
  number: 7,
  prof_bonus: 3,
  sneak_attack: 4,
  cantrips_known: 3,
  spells_known: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 2,
  spell_slots_level_03: 0,
  spell_slots_level_04: 0
)
Level.create(
  subclass: rogue,
  number: 8,
  prof_bonus: 3,
  sneak_attack: 4,
  cantrips_known: 3,
  spells_known: 6,
  spell_slots_level_01: 4,
  spell_slots_level_02: 2,
  spell_slots_level_03: 0,
  spell_slots_level_04: 0
)
Level.create(
  subclass: rogue,
  number: 9,
  prof_bonus: 4,
  sneak_attack: 5,
  cantrips_known: 3,
  spells_known: 6,
  spell_slots_level_01: 4,
  spell_slots_level_02: 2,
  spell_slots_level_03: 0,
  spell_slots_level_04: 0
)
Level.create(
  subclass: rogue,
  number: 10,
  prof_bonus: 4,
  sneak_attack: 5,
  cantrips_known: 4,
  spells_known: 7,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 0,
  spell_slots_level_04: 0
)
Level.create(
  subclass: rogue,
  number: 11,
  prof_bonus: 4,
  sneak_attack: 6,
  cantrips_known: 4,
  spells_known: 8,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 0,
  spell_slots_level_04: 0
)
Level.create(
  subclass: rogue,
  number: 12,
  prof_bonus: 4,
  sneak_attack: 6,
  cantrips_known: 4,
  spells_known: 8,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 0,
  spell_slots_level_04: 0
)
Level.create(
  subclass: rogue,
  number: 13,
  prof_bonus: 5,
  sneak_attack: 7,
  cantrips_known: 4,
  spells_known: 9,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 2,
  spell_slots_level_04: 0
)
Level.create(
  subclass: rogue,
  number: 14,
  prof_bonus: 5,
  sneak_attack: 7,
  cantrips_known: 4,
  spells_known: 10,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 2,
  spell_slots_level_04: 0
)
Level.create(
  subclass: rogue,
  number: 15,
  prof_bonus: 5,
  sneak_attack: 8,
  cantrips_known: 4,
  spells_known: 10,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 2,
  spell_slots_level_04: 0
)
Level.create(
  subclass: rogue,
  number: 16,
  prof_bonus: 5,
  sneak_attack: 8,
  cantrips_known: 4,
  spells_known: 11,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 0
)
Level.create(
  subclass: rogue,
  number: 17,
  prof_bonus: 6,
  sneak_attack: 9,
  cantrips_known: 4,
  spells_known: 11,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 0
)
Level.create(
  subclass: rogue,
  number: 18,
  prof_bonus: 6,
  sneak_attack: 9,
  cantrips_known: 4,
  spells_known: 11,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 0
)
Level.create(
  subclass: rogue,
  number: 19,
  prof_bonus: 6,
  sneak_attack: 10,
  cantrips_known: 4,
  spells_known: 12,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 1
)
Level.create(
  subclass: rogue,
  number: 20,
  prof_bonus: 6,
  sneak_attack: 10,
  cantrips_known: 4,
  spells_known: 13,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 1
)
