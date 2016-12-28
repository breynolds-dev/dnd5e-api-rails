cleric = ClassName.find_by(name: 'Cleric')
Level.create(
  class_name: cleric,
  number: 1,
  prof_bonus: 2,
  cantrips_known: 2,
  spell_slots_level_01: 2,
  spell_slots_level_02: 0,
  spell_slots_level_03: 0,
  spell_slots_level_04: 0,
  spell_slots_level_05: 0,
  spell_slots_level_06: 0,
  spell_slots_level_07: 0,
  spell_slots_level_08: 0,
  spell_slots_level_09: 0
)
Level.create(
  class_name: cleric,
  number: 2,
  prof_bonus: 2,
  cantrips_known: 3,
  spell_slots_level_01: 3,
  spell_slots_level_02: 0,
  spell_slots_level_03: 0,
  spell_slots_level_04: 0,
  spell_slots_level_05: 0,
  spell_slots_level_06: 0,
  spell_slots_level_07: 0,
  spell_slots_level_08: 0,
  spell_slots_level_09: 0
)

# == KNOWLEDGE DOMAIN =====================
cleric = Subclass.find_by(name: 'Knowledge Domain')

Level.create(
  subclass: cleric,
  number: 3,
  prof_bonus: 2,
  cantrips_known: 3,
  spell_slots_level_01: 4,
  spell_slots_level_02: 2,
  spell_slots_level_03: 0,
  spell_slots_level_04: 0,
  spell_slots_level_05: 0,
  spell_slots_level_06: 0,
  spell_slots_level_07: 0,
  spell_slots_level_08: 0,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 4,
  prof_bonus: 2,
  cantrips_known: 4,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 0,
  spell_slots_level_04: 0,
  spell_slots_level_05: 0,
  spell_slots_level_06: 0,
  spell_slots_level_07: 0,
  spell_slots_level_08: 0,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 5,
  prof_bonus: 3,
  cantrips_known: 4,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 2,
  spell_slots_level_04: 0,
  spell_slots_level_05: 0,
  spell_slots_level_06: 0,
  spell_slots_level_07: 0,
  spell_slots_level_08: 0,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 6,
  prof_bonus: 3,
  cantrips_known: 4,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 0,
  spell_slots_level_05: 0,
  spell_slots_level_06: 0,
  spell_slots_level_07: 0,
  spell_slots_level_08: 0,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 7,
  prof_bonus: 3,
  cantrips_known: 4,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 1,
  spell_slots_level_05: 0,
  spell_slots_level_06: 0,
  spell_slots_level_07: 0,
  spell_slots_level_08: 0,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 8,
  prof_bonus: 3,
  cantrips_known: 4,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 2,
  spell_slots_level_05: 0,
  spell_slots_level_06: 0,
  spell_slots_level_07: 0,
  spell_slots_level_08: 0,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 9,
  prof_bonus: 4,
  cantrips_known: 4,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 1,
  spell_slots_level_06: 0,
  spell_slots_level_07: 0,
  spell_slots_level_08: 0,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 10,
  prof_bonus: 4,
  cantrips_known: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 2,
  spell_slots_level_06: 0,
  spell_slots_level_07: 0,
  spell_slots_level_08: 0,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 11,
  prof_bonus: 4,
  cantrips_known: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 2,
  spell_slots_level_06: 1,
  spell_slots_level_07: 0,
  spell_slots_level_08: 0,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 12,
  prof_bonus: 4,
  cantrips_known: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 2,
  spell_slots_level_06: 1,
  spell_slots_level_07: 0,
  spell_slots_level_08: 0,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 13,
  prof_bonus: 5,
  cantrips_known: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 2,
  spell_slots_level_06: 1,
  spell_slots_level_07: 1,
  spell_slots_level_08: 0,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 14,
  prof_bonus: 5,
  cantrips_known: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 2,
  spell_slots_level_06: 1,
  spell_slots_level_07: 1,
  spell_slots_level_08: 0,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 15,
  prof_bonus: 5,
  cantrips_known: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 2,
  spell_slots_level_06: 1,
  spell_slots_level_07: 1,
  spell_slots_level_08: 1,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 16,
  prof_bonus: 5,
  cantrips_known: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 2,
  spell_slots_level_06: 1,
  spell_slots_level_07: 1,
  spell_slots_level_08: 1,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 17,
  prof_bonus: 6,
  cantrips_known: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 2,
  spell_slots_level_06: 1,
  spell_slots_level_07: 1,
  spell_slots_level_08: 1,
  spell_slots_level_09: 1
)

Level.create(
  subclass: cleric,
  number: 18,
  prof_bonus: 6,
  cantrips_known: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 3,
  spell_slots_level_06: 1,
  spell_slots_level_07: 1,
  spell_slots_level_08: 1,
  spell_slots_level_09: 1
)

Level.create(
  subclass: cleric,
  number: 19,
  prof_bonus: 6,
  cantrips_known: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 3,
  spell_slots_level_06: 2,
  spell_slots_level_07: 1,
  spell_slots_level_08: 1,
  spell_slots_level_09: 1
)

Level.create(
  subclass: cleric,
  number: 20,
  prof_bonus: 6,
  cantrips_known: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 3,
  spell_slots_level_06: 2,
  spell_slots_level_07: 2,
  spell_slots_level_08: 1,
  spell_slots_level_09: 1
)

# == LIFE DOMAIN ==========================
cleric = Subclass.find_by(name: 'Life Domain')

Level.create(
  subclass: cleric,
  number: 3,
  prof_bonus: 2,
  cantrips_known: 3,
  spell_slots_level_01: 4,
  spell_slots_level_02: 2,
  spell_slots_level_03: 0,
  spell_slots_level_04: 0,
  spell_slots_level_05: 0,
  spell_slots_level_06: 0,
  spell_slots_level_07: 0,
  spell_slots_level_08: 0,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 4,
  prof_bonus: 2,
  cantrips_known: 4,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 0,
  spell_slots_level_04: 0,
  spell_slots_level_05: 0,
  spell_slots_level_06: 0,
  spell_slots_level_07: 0,
  spell_slots_level_08: 0,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 5,
  prof_bonus: 3,
  cantrips_known: 4,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 2,
  spell_slots_level_04: 0,
  spell_slots_level_05: 0,
  spell_slots_level_06: 0,
  spell_slots_level_07: 0,
  spell_slots_level_08: 0,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 6,
  prof_bonus: 3,
  cantrips_known: 4,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 0,
  spell_slots_level_05: 0,
  spell_slots_level_06: 0,
  spell_slots_level_07: 0,
  spell_slots_level_08: 0,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 7,
  prof_bonus: 3,
  cantrips_known: 4,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 1,
  spell_slots_level_05: 0,
  spell_slots_level_06: 0,
  spell_slots_level_07: 0,
  spell_slots_level_08: 0,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 8,
  prof_bonus: 3,
  cantrips_known: 4,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 2,
  spell_slots_level_05: 0,
  spell_slots_level_06: 0,
  spell_slots_level_07: 0,
  spell_slots_level_08: 0,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 9,
  prof_bonus: 4,
  cantrips_known: 4,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 1,
  spell_slots_level_06: 0,
  spell_slots_level_07: 0,
  spell_slots_level_08: 0,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 10,
  prof_bonus: 4,
  cantrips_known: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 2,
  spell_slots_level_06: 0,
  spell_slots_level_07: 0,
  spell_slots_level_08: 0,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 11,
  prof_bonus: 4,
  cantrips_known: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 2,
  spell_slots_level_06: 1,
  spell_slots_level_07: 0,
  spell_slots_level_08: 0,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 12,
  prof_bonus: 4,
  cantrips_known: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 2,
  spell_slots_level_06: 1,
  spell_slots_level_07: 0,
  spell_slots_level_08: 0,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 13,
  prof_bonus: 5,
  cantrips_known: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 2,
  spell_slots_level_06: 1,
  spell_slots_level_07: 1,
  spell_slots_level_08: 0,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 14,
  prof_bonus: 5,
  cantrips_known: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 2,
  spell_slots_level_06: 1,
  spell_slots_level_07: 1,
  spell_slots_level_08: 0,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 15,
  prof_bonus: 5,
  cantrips_known: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 2,
  spell_slots_level_06: 1,
  spell_slots_level_07: 1,
  spell_slots_level_08: 1,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 16,
  prof_bonus: 5,
  cantrips_known: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 2,
  spell_slots_level_06: 1,
  spell_slots_level_07: 1,
  spell_slots_level_08: 1,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 17,
  prof_bonus: 6,
  cantrips_known: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 2,
  spell_slots_level_06: 1,
  spell_slots_level_07: 1,
  spell_slots_level_08: 1,
  spell_slots_level_09: 1
)

Level.create(
  subclass: cleric,
  number: 18,
  prof_bonus: 6,
  cantrips_known: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 3,
  spell_slots_level_06: 1,
  spell_slots_level_07: 1,
  spell_slots_level_08: 1,
  spell_slots_level_09: 1
)

Level.create(
  subclass: cleric,
  number: 19,
  prof_bonus: 6,
  cantrips_known: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 3,
  spell_slots_level_06: 2,
  spell_slots_level_07: 1,
  spell_slots_level_08: 1,
  spell_slots_level_09: 1
)

Level.create(
  subclass: cleric,
  number: 20,
  prof_bonus: 6,
  cantrips_known: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 3,
  spell_slots_level_06: 2,
  spell_slots_level_07: 2,
  spell_slots_level_08: 1,
  spell_slots_level_09: 1
)

# == LIGHT DOMAIN =========================
cleric = Subclass.find_by(name: 'Light Domain')

Level.create(
  subclass: cleric,
  number: 3,
  prof_bonus: 2,
  cantrips_known: 3,
  spell_slots_level_01: 4,
  spell_slots_level_02: 2,
  spell_slots_level_03: 0,
  spell_slots_level_04: 0,
  spell_slots_level_05: 0,
  spell_slots_level_06: 0,
  spell_slots_level_07: 0,
  spell_slots_level_08: 0,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 4,
  prof_bonus: 2,
  cantrips_known: 4,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 0,
  spell_slots_level_04: 0,
  spell_slots_level_05: 0,
  spell_slots_level_06: 0,
  spell_slots_level_07: 0,
  spell_slots_level_08: 0,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 5,
  prof_bonus: 3,
  cantrips_known: 4,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 2,
  spell_slots_level_04: 0,
  spell_slots_level_05: 0,
  spell_slots_level_06: 0,
  spell_slots_level_07: 0,
  spell_slots_level_08: 0,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 6,
  prof_bonus: 3,
  cantrips_known: 4,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 0,
  spell_slots_level_05: 0,
  spell_slots_level_06: 0,
  spell_slots_level_07: 0,
  spell_slots_level_08: 0,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 7,
  prof_bonus: 3,
  cantrips_known: 4,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 1,
  spell_slots_level_05: 0,
  spell_slots_level_06: 0,
  spell_slots_level_07: 0,
  spell_slots_level_08: 0,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 8,
  prof_bonus: 3,
  cantrips_known: 4,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 2,
  spell_slots_level_05: 0,
  spell_slots_level_06: 0,
  spell_slots_level_07: 0,
  spell_slots_level_08: 0,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 9,
  prof_bonus: 4,
  cantrips_known: 4,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 1,
  spell_slots_level_06: 0,
  spell_slots_level_07: 0,
  spell_slots_level_08: 0,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 10,
  prof_bonus: 4,
  cantrips_known: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 2,
  spell_slots_level_06: 0,
  spell_slots_level_07: 0,
  spell_slots_level_08: 0,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 11,
  prof_bonus: 4,
  cantrips_known: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 2,
  spell_slots_level_06: 1,
  spell_slots_level_07: 0,
  spell_slots_level_08: 0,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 12,
  prof_bonus: 4,
  cantrips_known: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 2,
  spell_slots_level_06: 1,
  spell_slots_level_07: 0,
  spell_slots_level_08: 0,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 13,
  prof_bonus: 5,
  cantrips_known: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 2,
  spell_slots_level_06: 1,
  spell_slots_level_07: 1,
  spell_slots_level_08: 0,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 14,
  prof_bonus: 5,
  cantrips_known: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 2,
  spell_slots_level_06: 1,
  spell_slots_level_07: 1,
  spell_slots_level_08: 0,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 15,
  prof_bonus: 5,
  cantrips_known: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 2,
  spell_slots_level_06: 1,
  spell_slots_level_07: 1,
  spell_slots_level_08: 1,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 16,
  prof_bonus: 5,
  cantrips_known: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 2,
  spell_slots_level_06: 1,
  spell_slots_level_07: 1,
  spell_slots_level_08: 1,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 17,
  prof_bonus: 6,
  cantrips_known: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 2,
  spell_slots_level_06: 1,
  spell_slots_level_07: 1,
  spell_slots_level_08: 1,
  spell_slots_level_09: 1
)

Level.create(
  subclass: cleric,
  number: 18,
  prof_bonus: 6,
  cantrips_known: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 3,
  spell_slots_level_06: 1,
  spell_slots_level_07: 1,
  spell_slots_level_08: 1,
  spell_slots_level_09: 1
)

Level.create(
  subclass: cleric,
  number: 19,
  prof_bonus: 6,
  cantrips_known: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 3,
  spell_slots_level_06: 2,
  spell_slots_level_07: 1,
  spell_slots_level_08: 1,
  spell_slots_level_09: 1
)

Level.create(
  subclass: cleric,
  number: 20,
  prof_bonus: 6,
  cantrips_known: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 3,
  spell_slots_level_06: 2,
  spell_slots_level_07: 2,
  spell_slots_level_08: 1,
  spell_slots_level_09: 1
)

# == NATURE DOMAIN ========================
cleric = Subclass.find_by(name: 'Nature Domain')

Level.create(
  subclass: cleric,
  number: 3,
  prof_bonus: 2,
  cantrips_known: 3,
  spell_slots_level_01: 4,
  spell_slots_level_02: 2,
  spell_slots_level_03: 0,
  spell_slots_level_04: 0,
  spell_slots_level_05: 0,
  spell_slots_level_06: 0,
  spell_slots_level_07: 0,
  spell_slots_level_08: 0,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 4,
  prof_bonus: 2,
  cantrips_known: 4,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 0,
  spell_slots_level_04: 0,
  spell_slots_level_05: 0,
  spell_slots_level_06: 0,
  spell_slots_level_07: 0,
  spell_slots_level_08: 0,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 5,
  prof_bonus: 3,
  cantrips_known: 4,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 2,
  spell_slots_level_04: 0,
  spell_slots_level_05: 0,
  spell_slots_level_06: 0,
  spell_slots_level_07: 0,
  spell_slots_level_08: 0,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 6,
  prof_bonus: 3,
  cantrips_known: 4,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 0,
  spell_slots_level_05: 0,
  spell_slots_level_06: 0,
  spell_slots_level_07: 0,
  spell_slots_level_08: 0,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 7,
  prof_bonus: 3,
  cantrips_known: 4,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 1,
  spell_slots_level_05: 0,
  spell_slots_level_06: 0,
  spell_slots_level_07: 0,
  spell_slots_level_08: 0,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 8,
  prof_bonus: 3,
  cantrips_known: 4,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 2,
  spell_slots_level_05: 0,
  spell_slots_level_06: 0,
  spell_slots_level_07: 0,
  spell_slots_level_08: 0,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 9,
  prof_bonus: 4,
  cantrips_known: 4,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 1,
  spell_slots_level_06: 0,
  spell_slots_level_07: 0,
  spell_slots_level_08: 0,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 10,
  prof_bonus: 4,
  cantrips_known: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 2,
  spell_slots_level_06: 0,
  spell_slots_level_07: 0,
  spell_slots_level_08: 0,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 11,
  prof_bonus: 4,
  cantrips_known: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 2,
  spell_slots_level_06: 1,
  spell_slots_level_07: 0,
  spell_slots_level_08: 0,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 12,
  prof_bonus: 4,
  cantrips_known: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 2,
  spell_slots_level_06: 1,
  spell_slots_level_07: 0,
  spell_slots_level_08: 0,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 13,
  prof_bonus: 5,
  cantrips_known: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 2,
  spell_slots_level_06: 1,
  spell_slots_level_07: 1,
  spell_slots_level_08: 0,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 14,
  prof_bonus: 5,
  cantrips_known: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 2,
  spell_slots_level_06: 1,
  spell_slots_level_07: 1,
  spell_slots_level_08: 0,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 15,
  prof_bonus: 5,
  cantrips_known: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 2,
  spell_slots_level_06: 1,
  spell_slots_level_07: 1,
  spell_slots_level_08: 1,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 16,
  prof_bonus: 5,
  cantrips_known: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 2,
  spell_slots_level_06: 1,
  spell_slots_level_07: 1,
  spell_slots_level_08: 1,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 17,
  prof_bonus: 6,
  cantrips_known: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 2,
  spell_slots_level_06: 1,
  spell_slots_level_07: 1,
  spell_slots_level_08: 1,
  spell_slots_level_09: 1
)

Level.create(
  subclass: cleric,
  number: 18,
  prof_bonus: 6,
  cantrips_known: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 3,
  spell_slots_level_06: 1,
  spell_slots_level_07: 1,
  spell_slots_level_08: 1,
  spell_slots_level_09: 1
)

Level.create(
  subclass: cleric,
  number: 19,
  prof_bonus: 6,
  cantrips_known: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 3,
  spell_slots_level_06: 2,
  spell_slots_level_07: 1,
  spell_slots_level_08: 1,
  spell_slots_level_09: 1
)

Level.create(
  subclass: cleric,
  number: 20,
  prof_bonus: 6,
  cantrips_known: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 3,
  spell_slots_level_06: 2,
  spell_slots_level_07: 2,
  spell_slots_level_08: 1,
  spell_slots_level_09: 1
)

# == TEMPEST DOMAIN =======================
cleric = Subclass.find_by(name: 'Tempest Domain')

Level.create(
  subclass: cleric,
  number: 3,
  prof_bonus: 2,
  cantrips_known: 3,
  spell_slots_level_01: 4,
  spell_slots_level_02: 2,
  spell_slots_level_03: 0,
  spell_slots_level_04: 0,
  spell_slots_level_05: 0,
  spell_slots_level_06: 0,
  spell_slots_level_07: 0,
  spell_slots_level_08: 0,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 4,
  prof_bonus: 2,
  cantrips_known: 4,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 0,
  spell_slots_level_04: 0,
  spell_slots_level_05: 0,
  spell_slots_level_06: 0,
  spell_slots_level_07: 0,
  spell_slots_level_08: 0,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 5,
  prof_bonus: 3,
  cantrips_known: 4,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 2,
  spell_slots_level_04: 0,
  spell_slots_level_05: 0,
  spell_slots_level_06: 0,
  spell_slots_level_07: 0,
  spell_slots_level_08: 0,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 6,
  prof_bonus: 3,
  cantrips_known: 4,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 0,
  spell_slots_level_05: 0,
  spell_slots_level_06: 0,
  spell_slots_level_07: 0,
  spell_slots_level_08: 0,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 7,
  prof_bonus: 3,
  cantrips_known: 4,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 1,
  spell_slots_level_05: 0,
  spell_slots_level_06: 0,
  spell_slots_level_07: 0,
  spell_slots_level_08: 0,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 8,
  prof_bonus: 3,
  cantrips_known: 4,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 2,
  spell_slots_level_05: 0,
  spell_slots_level_06: 0,
  spell_slots_level_07: 0,
  spell_slots_level_08: 0,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 9,
  prof_bonus: 4,
  cantrips_known: 4,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 1,
  spell_slots_level_06: 0,
  spell_slots_level_07: 0,
  spell_slots_level_08: 0,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 10,
  prof_bonus: 4,
  cantrips_known: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 2,
  spell_slots_level_06: 0,
  spell_slots_level_07: 0,
  spell_slots_level_08: 0,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 11,
  prof_bonus: 4,
  cantrips_known: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 2,
  spell_slots_level_06: 1,
  spell_slots_level_07: 0,
  spell_slots_level_08: 0,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 12,
  prof_bonus: 4,
  cantrips_known: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 2,
  spell_slots_level_06: 1,
  spell_slots_level_07: 0,
  spell_slots_level_08: 0,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 13,
  prof_bonus: 5,
  cantrips_known: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 2,
  spell_slots_level_06: 1,
  spell_slots_level_07: 1,
  spell_slots_level_08: 0,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 14,
  prof_bonus: 5,
  cantrips_known: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 2,
  spell_slots_level_06: 1,
  spell_slots_level_07: 1,
  spell_slots_level_08: 0,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 15,
  prof_bonus: 5,
  cantrips_known: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 2,
  spell_slots_level_06: 1,
  spell_slots_level_07: 1,
  spell_slots_level_08: 1,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 16,
  prof_bonus: 5,
  cantrips_known: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 2,
  spell_slots_level_06: 1,
  spell_slots_level_07: 1,
  spell_slots_level_08: 1,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 17,
  prof_bonus: 6,
  cantrips_known: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 2,
  spell_slots_level_06: 1,
  spell_slots_level_07: 1,
  spell_slots_level_08: 1,
  spell_slots_level_09: 1
)

Level.create(
  subclass: cleric,
  number: 18,
  prof_bonus: 6,
  cantrips_known: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 3,
  spell_slots_level_06: 1,
  spell_slots_level_07: 1,
  spell_slots_level_08: 1,
  spell_slots_level_09: 1
)

Level.create(
  subclass: cleric,
  number: 19,
  prof_bonus: 6,
  cantrips_known: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 3,
  spell_slots_level_06: 2,
  spell_slots_level_07: 1,
  spell_slots_level_08: 1,
  spell_slots_level_09: 1
)

Level.create(
  subclass: cleric,
  number: 20,
  prof_bonus: 6,
  cantrips_known: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 3,
  spell_slots_level_06: 2,
  spell_slots_level_07: 2,
  spell_slots_level_08: 1,
  spell_slots_level_09: 1
)

# == TRICKERY DOMAIN ======================
cleric = Subclass.find_by(name: 'Trickery Domain')

Level.create(
  subclass: cleric,
  number: 3,
  prof_bonus: 2,
  cantrips_known: 3,
  spell_slots_level_01: 4,
  spell_slots_level_02: 2,
  spell_slots_level_03: 0,
  spell_slots_level_04: 0,
  spell_slots_level_05: 0,
  spell_slots_level_06: 0,
  spell_slots_level_07: 0,
  spell_slots_level_08: 0,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 4,
  prof_bonus: 2,
  cantrips_known: 4,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 0,
  spell_slots_level_04: 0,
  spell_slots_level_05: 0,
  spell_slots_level_06: 0,
  spell_slots_level_07: 0,
  spell_slots_level_08: 0,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 5,
  prof_bonus: 3,
  cantrips_known: 4,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 2,
  spell_slots_level_04: 0,
  spell_slots_level_05: 0,
  spell_slots_level_06: 0,
  spell_slots_level_07: 0,
  spell_slots_level_08: 0,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 6,
  prof_bonus: 3,
  cantrips_known: 4,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 0,
  spell_slots_level_05: 0,
  spell_slots_level_06: 0,
  spell_slots_level_07: 0,
  spell_slots_level_08: 0,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 7,
  prof_bonus: 3,
  cantrips_known: 4,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 1,
  spell_slots_level_05: 0,
  spell_slots_level_06: 0,
  spell_slots_level_07: 0,
  spell_slots_level_08: 0,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 8,
  prof_bonus: 3,
  cantrips_known: 4,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 2,
  spell_slots_level_05: 0,
  spell_slots_level_06: 0,
  spell_slots_level_07: 0,
  spell_slots_level_08: 0,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 9,
  prof_bonus: 4,
  cantrips_known: 4,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 1,
  spell_slots_level_06: 0,
  spell_slots_level_07: 0,
  spell_slots_level_08: 0,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 10,
  prof_bonus: 4,
  cantrips_known: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 2,
  spell_slots_level_06: 0,
  spell_slots_level_07: 0,
  spell_slots_level_08: 0,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 11,
  prof_bonus: 4,
  cantrips_known: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 2,
  spell_slots_level_06: 1,
  spell_slots_level_07: 0,
  spell_slots_level_08: 0,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 12,
  prof_bonus: 4,
  cantrips_known: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 2,
  spell_slots_level_06: 1,
  spell_slots_level_07: 0,
  spell_slots_level_08: 0,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 13,
  prof_bonus: 5,
  cantrips_known: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 2,
  spell_slots_level_06: 1,
  spell_slots_level_07: 1,
  spell_slots_level_08: 0,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 14,
  prof_bonus: 5,
  cantrips_known: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 2,
  spell_slots_level_06: 1,
  spell_slots_level_07: 1,
  spell_slots_level_08: 0,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 15,
  prof_bonus: 5,
  cantrips_known: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 2,
  spell_slots_level_06: 1,
  spell_slots_level_07: 1,
  spell_slots_level_08: 1,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 16,
  prof_bonus: 5,
  cantrips_known: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 2,
  spell_slots_level_06: 1,
  spell_slots_level_07: 1,
  spell_slots_level_08: 1,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 17,
  prof_bonus: 6,
  cantrips_known: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 2,
  spell_slots_level_06: 1,
  spell_slots_level_07: 1,
  spell_slots_level_08: 1,
  spell_slots_level_09: 1
)

Level.create(
  subclass: cleric,
  number: 18,
  prof_bonus: 6,
  cantrips_known: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 3,
  spell_slots_level_06: 1,
  spell_slots_level_07: 1,
  spell_slots_level_08: 1,
  spell_slots_level_09: 1
)

Level.create(
  subclass: cleric,
  number: 19,
  prof_bonus: 6,
  cantrips_known: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 3,
  spell_slots_level_06: 2,
  spell_slots_level_07: 1,
  spell_slots_level_08: 1,
  spell_slots_level_09: 1
)

Level.create(
  subclass: cleric,
  number: 20,
  prof_bonus: 6,
  cantrips_known: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 3,
  spell_slots_level_06: 2,
  spell_slots_level_07: 2,
  spell_slots_level_08: 1,
  spell_slots_level_09: 1
)

# == WAR DOMAIN ===========================
cleric = Subclass.find_by(name: 'War Domain')

Level.create(
  subclass: cleric,
  number: 3,
  prof_bonus: 2,
  cantrips_known: 3,
  spell_slots_level_01: 4,
  spell_slots_level_02: 2,
  spell_slots_level_03: 0,
  spell_slots_level_04: 0,
  spell_slots_level_05: 0,
  spell_slots_level_06: 0,
  spell_slots_level_07: 0,
  spell_slots_level_08: 0,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 4,
  prof_bonus: 2,
  cantrips_known: 4,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 0,
  spell_slots_level_04: 0,
  spell_slots_level_05: 0,
  spell_slots_level_06: 0,
  spell_slots_level_07: 0,
  spell_slots_level_08: 0,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 5,
  prof_bonus: 3,
  cantrips_known: 4,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 2,
  spell_slots_level_04: 0,
  spell_slots_level_05: 0,
  spell_slots_level_06: 0,
  spell_slots_level_07: 0,
  spell_slots_level_08: 0,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 6,
  prof_bonus: 3,
  cantrips_known: 4,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 0,
  spell_slots_level_05: 0,
  spell_slots_level_06: 0,
  spell_slots_level_07: 0,
  spell_slots_level_08: 0,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 7,
  prof_bonus: 3,
  cantrips_known: 4,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 1,
  spell_slots_level_05: 0,
  spell_slots_level_06: 0,
  spell_slots_level_07: 0,
  spell_slots_level_08: 0,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 8,
  prof_bonus: 3,
  cantrips_known: 4,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 2,
  spell_slots_level_05: 0,
  spell_slots_level_06: 0,
  spell_slots_level_07: 0,
  spell_slots_level_08: 0,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 9,
  prof_bonus: 4,
  cantrips_known: 4,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 1,
  spell_slots_level_06: 0,
  spell_slots_level_07: 0,
  spell_slots_level_08: 0,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 10,
  prof_bonus: 4,
  cantrips_known: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 2,
  spell_slots_level_06: 0,
  spell_slots_level_07: 0,
  spell_slots_level_08: 0,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 11,
  prof_bonus: 4,
  cantrips_known: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 2,
  spell_slots_level_06: 1,
  spell_slots_level_07: 0,
  spell_slots_level_08: 0,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 12,
  prof_bonus: 4,
  cantrips_known: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 2,
  spell_slots_level_06: 1,
  spell_slots_level_07: 0,
  spell_slots_level_08: 0,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 13,
  prof_bonus: 5,
  cantrips_known: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 2,
  spell_slots_level_06: 1,
  spell_slots_level_07: 1,
  spell_slots_level_08: 0,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 14,
  prof_bonus: 5,
  cantrips_known: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 2,
  spell_slots_level_06: 1,
  spell_slots_level_07: 1,
  spell_slots_level_08: 0,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 15,
  prof_bonus: 5,
  cantrips_known: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 2,
  spell_slots_level_06: 1,
  spell_slots_level_07: 1,
  spell_slots_level_08: 1,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 16,
  prof_bonus: 5,
  cantrips_known: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 2,
  spell_slots_level_06: 1,
  spell_slots_level_07: 1,
  spell_slots_level_08: 1,
  spell_slots_level_09: 0
)

Level.create(
  subclass: cleric,
  number: 17,
  prof_bonus: 6,
  cantrips_known: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 2,
  spell_slots_level_06: 1,
  spell_slots_level_07: 1,
  spell_slots_level_08: 1,
  spell_slots_level_09: 1
)

Level.create(
  subclass: cleric,
  number: 18,
  prof_bonus: 6,
  cantrips_known: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 3,
  spell_slots_level_06: 1,
  spell_slots_level_07: 1,
  spell_slots_level_08: 1,
  spell_slots_level_09: 1
)

Level.create(
  subclass: cleric,
  number: 19,
  prof_bonus: 6,
  cantrips_known: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 3,
  spell_slots_level_06: 2,
  spell_slots_level_07: 1,
  spell_slots_level_08: 1,
  spell_slots_level_09: 1
)

Level.create(
  subclass: cleric,
  number: 20,
  prof_bonus: 6,
  cantrips_known: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 3,
  spell_slots_level_06: 2,
  spell_slots_level_07: 2,
  spell_slots_level_08: 1,
  spell_slots_level_09: 1
)
