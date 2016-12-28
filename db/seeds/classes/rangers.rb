ranger = ClassName.find_by(name: 'Ranger')
Level.create(
  class_name: ranger,
  number: 1,
  prof_bonus: 2,
  spells_known: 0,
  spell_slots_level_01: 0,
  spell_slots_level_02: 0,
  spell_slots_level_03: 0,
  spell_slots_level_04: 0,
  spell_slots_level_05: 0
)

Level.create(
  class_name: ranger,
  number: 2,
  prof_bonus: 2,
  spells_known: 2,
  spell_slots_level_01: 2,
  spell_slots_level_02: 0,
  spell_slots_level_03: 0,
  spell_slots_level_04: 0,
  spell_slots_level_05: 0
)

# == HUNTER ===============================
ranger = Subclass.find_by(name: 'Hunter')
Level.create(
  subclass: ranger,
  number: 3,
  prof_bonus: 2,
  spells_known: 3,
  spell_slots_level_01: 3,
  spell_slots_level_02: 0,
  spell_slots_level_03: 0,
  spell_slots_level_04: 0,
  spell_slots_level_05: 0
)
Level.create(
  subclass: ranger,
  number: 4,
  prof_bonus: 2,
  spells_known: 3,
  spell_slots_level_01: 3,
  spell_slots_level_02: 0,
  spell_slots_level_03: 0,
  spell_slots_level_04: 0,
  spell_slots_level_05: 0
)
Level.create(
  subclass: ranger,
  number: 5,
  prof_bonus: 3,
  spells_known: 4,
  spell_slots_level_01: 4,
  spell_slots_level_02: 2,
  spell_slots_level_03: 0,
  spell_slots_level_04: 0,
  spell_slots_level_05: 0
)
Level.create(
  subclass: ranger,
  number: 6,
  prof_bonus: 3,
  spells_known: 4,
  spell_slots_level_01: 4,
  spell_slots_level_02: 2,
  spell_slots_level_03: 0,
  spell_slots_level_04: 0,
  spell_slots_level_05: 0
)
Level.create(
  subclass: ranger,
  number: 7,
  prof_bonus: 3,
  spells_known: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 0,
  spell_slots_level_04: 0,
  spell_slots_level_05: 0
)
Level.create(
  subclass: ranger,
  number: 8,
  prof_bonus: 3,
  spells_known: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 0,
  spell_slots_level_04: 0,
  spell_slots_level_05: 0
)
Level.create(
  subclass: ranger,
  number: 9,
  prof_bonus: 4,
  spells_known: 6,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 2,
  spell_slots_level_04: 0,
  spell_slots_level_05: 0
)
Level.create(
  subclass: ranger,
  number: 10,
  prof_bonus: 4,
  spells_known: 6,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 2,
  spell_slots_level_04: 0,
  spell_slots_level_05: 0
)
Level.create(
  subclass: ranger,
  number: 11,
  prof_bonus: 4,
  spells_known: 7,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 0,
  spell_slots_level_05: 0
)
Level.create(
  subclass: ranger,
  number: 12,
  prof_bonus: 4,
  spells_known: 7,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 0,
  spell_slots_level_05: 0
)
Level.create(
  subclass: ranger,
  number: 13,
  prof_bonus: 5,
  spells_known: 8,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 1,
  spell_slots_level_05: 0
)
Level.create(
  subclass: ranger,
  number: 14,
  prof_bonus: 5,
  spells_known: 8,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 1,
  spell_slots_level_05: 0
)
Level.create(
  subclass: ranger,
  number: 15,
  prof_bonus: 5,
  spells_known: 9,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 2,
  spell_slots_level_05: 0
)
Level.create(
  subclass: ranger,
  number: 16,
  prof_bonus: 5,
  spells_known: 9,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 2,
  spell_slots_level_05: 0
)
Level.create(
  subclass: ranger,
  number: 17,
  prof_bonus: 6,
  spells_known: 10,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 1
)
Level.create(
  subclass: ranger,
  number: 18,
  prof_bonus: 6,
  spells_known: 10,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 1
)
Level.create(
  subclass: ranger,
  number: 19,
  prof_bonus: 6,
  spells_known: 11,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 2
)
Level.create(
  subclass: ranger,
  number: 20,
  prof_bonus: 6,
  spells_known: 11,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 2
)

# == BEAST MASTER =========================
ranger = Subclass.find_by(name: 'Beast Master')
Level.create(
  subclass: ranger,
  number: 3,
  prof_bonus: 2,
  spells_known: 3,
  spell_slots_level_01: 3,
  spell_slots_level_02: 0,
  spell_slots_level_03: 0,
  spell_slots_level_04: 0,
  spell_slots_level_05: 0
)
Level.create(
  subclass: ranger,
  number: 4,
  prof_bonus: 2,
  spells_known: 3,
  spell_slots_level_01: 3,
  spell_slots_level_02: 0,
  spell_slots_level_03: 0,
  spell_slots_level_04: 0,
  spell_slots_level_05: 0
)
Level.create(
  subclass: ranger,
  number: 5,
  prof_bonus: 3,
  spells_known: 4,
  spell_slots_level_01: 4,
  spell_slots_level_02: 2,
  spell_slots_level_03: 0,
  spell_slots_level_04: 0,
  spell_slots_level_05: 0
)
Level.create(
  subclass: ranger,
  number: 6,
  prof_bonus: 3,
  spells_known: 4,
  spell_slots_level_01: 4,
  spell_slots_level_02: 2,
  spell_slots_level_03: 0,
  spell_slots_level_04: 0,
  spell_slots_level_05: 0
)
Level.create(
  subclass: ranger,
  number: 7,
  prof_bonus: 3,
  spells_known: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 0,
  spell_slots_level_04: 0,
  spell_slots_level_05: 0
)
Level.create(
  subclass: ranger,
  number: 8,
  prof_bonus: 3,
  spells_known: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 0,
  spell_slots_level_04: 0,
  spell_slots_level_05: 0
)
Level.create(
  subclass: ranger,
  number: 9,
  prof_bonus: 4,
  spells_known: 6,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 2,
  spell_slots_level_04: 0,
  spell_slots_level_05: 0
)
Level.create(
  subclass: ranger,
  number: 10,
  prof_bonus: 4,
  spells_known: 6,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 2,
  spell_slots_level_04: 0,
  spell_slots_level_05: 0
)
Level.create(
  subclass: ranger,
  number: 11,
  prof_bonus: 4,
  spells_known: 7,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 0,
  spell_slots_level_05: 0
)
Level.create(
  subclass: ranger,
  number: 12,
  prof_bonus: 4,
  spells_known: 7,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 0,
  spell_slots_level_05: 0
)
Level.create(
  subclass: ranger,
  number: 13,
  prof_bonus: 5,
  spells_known: 8,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 1,
  spell_slots_level_05: 0
)
Level.create(
  subclass: ranger,
  number: 14,
  prof_bonus: 5,
  spells_known: 8,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 1,
  spell_slots_level_05: 0
)
Level.create(
  subclass: ranger,
  number: 15,
  prof_bonus: 5,
  spells_known: 9,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 2,
  spell_slots_level_05: 0
)
Level.create(
  subclass: ranger,
  number: 16,
  prof_bonus: 5,
  spells_known: 9,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 2,
  spell_slots_level_05: 0
)
Level.create(
  subclass: ranger,
  number: 17,
  prof_bonus: 6,
  spells_known: 10,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 1
)
Level.create(
  subclass: ranger,
  number: 18,
  prof_bonus: 6,
  spells_known: 10,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 1
)
Level.create(
  subclass: ranger,
  number: 19,
  prof_bonus: 6,
  spells_known: 11,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 2
)
Level.create(
  subclass: ranger,
  number: 20,
  prof_bonus: 6,
  spells_known: 11,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 2
)
