paladin = ClassName.find_by(name: 'Paladin')
Level.create(
  class_name: paladin,
  number: 1,
  prof_bonus: 2,
  spell_slots_level_01: 0,
  spell_slots_level_02: 0,
  spell_slots_level_03: 0,
  spell_slots_level_04: 0,
  spell_slots_level_05: 0
)
Level.create(
  class_name: paladin,
  number: 2,
  prof_bonus: 2,
  spell_slots_level_01: 2,
  spell_slots_level_02: 0,
  spell_slots_level_03: 0,
  spell_slots_level_04: 0,
  spell_slots_level_05: 0
)

# == OATH OF DEVOTION =====================
paladin = Subclass.find_by(name: 'Oath of Devotion')
Level.create(
  subclass: paladin,
  number: 3,
  prof_bonus: 2,
  spell_slots_level_01: 3,
  spell_slots_level_02: 0,
  spell_slots_level_03: 0,
  spell_slots_level_04: 0,
  spell_slots_level_05: 0
)
Level.create(
  subclass: paladin,
  number: 4,
  prof_bonus: 2,
  spell_slots_level_01: 3,
  spell_slots_level_02: 0,
  spell_slots_level_03: 0,
  spell_slots_level_04: 0,
  spell_slots_level_05: 0
)
Level.create(
  subclass: paladin,
  number: 5,
  prof_bonus: 3,
  spell_slots_level_01: 4,
  spell_slots_level_02: 2,
  spell_slots_level_03: 0,
  spell_slots_level_04: 0,
  spell_slots_level_05: 0
)
Level.create(
  subclass: paladin,
  number: 6,
  prof_bonus: 3,
  spell_slots_level_01: 4,
  spell_slots_level_02: 2,
  spell_slots_level_03: 0,
  spell_slots_level_04: 0,
  spell_slots_level_05: 0
)
Level.create(
  subclass: paladin,
  number: 7,
  prof_bonus: 3,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 0,
  spell_slots_level_04: 0,
  spell_slots_level_05: 0
)
Level.create(
  subclass: paladin,
  number: 8,
  prof_bonus: 3,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 0,
  spell_slots_level_04: 0,
  spell_slots_level_05: 0
)
Level.create(
  subclass: paladin,
  number: 9,
  prof_bonus: 4,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 2,
  spell_slots_level_04: 0,
  spell_slots_level_05: 0
)
Level.create(
  subclass: paladin,
  number: 10,
  prof_bonus: 4,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 2,
  spell_slots_level_04: 0,
  spell_slots_level_05: 0
)
Level.create(
  subclass: paladin,
  number: 11,
  prof_bonus: 4,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 0,
  spell_slots_level_05: 0
)
Level.create(
  subclass: paladin,
  number: 12,
  prof_bonus: 4,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 0,
  spell_slots_level_05: 0
)
Level.create(
  subclass: paladin,
  number: 13,
  prof_bonus: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 1,
  spell_slots_level_05: 0
)
Level.create(
  subclass: paladin,
  number: 14,
  prof_bonus: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 1,
  spell_slots_level_05: 0
)
Level.create(
  subclass: paladin,
  number: 15,
  prof_bonus: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 2,
  spell_slots_level_05: 0
)
Level.create(
  subclass: paladin,
  number: 16,
  prof_bonus: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 2,
  spell_slots_level_05: 0
)
Level.create(
  subclass: paladin,
  number: 17,
  prof_bonus: 6,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 1
)
Level.create(
  subclass: paladin,
  number: 18,
  prof_bonus: 6,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 1
)
Level.create(
  subclass: paladin,
  number: 19,
  prof_bonus: 6,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 2
)
Level.create(
  subclass: paladin,
  number: 20,
  prof_bonus: 6,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 2
)

# == OATH OF THE ANCIENTS =================
paladin = Subclass.find_by(name: 'Oath of the Ancients')
Level.create(
  subclass: paladin,
  number: 3,
  prof_bonus: 2,
  spell_slots_level_01: 3,
  spell_slots_level_02: 0,
  spell_slots_level_03: 0,
  spell_slots_level_04: 0,
  spell_slots_level_05: 0
)
Level.create(
  subclass: paladin,
  number: 4,
  prof_bonus: 2,
  spell_slots_level_01: 3,
  spell_slots_level_02: 0,
  spell_slots_level_03: 0,
  spell_slots_level_04: 0,
  spell_slots_level_05: 0
)
Level.create(
  subclass: paladin,
  number: 5,
  prof_bonus: 3,
  spell_slots_level_01: 4,
  spell_slots_level_02: 2,
  spell_slots_level_03: 0,
  spell_slots_level_04: 0,
  spell_slots_level_05: 0
)
Level.create(
  subclass: paladin,
  number: 6,
  prof_bonus: 3,
  spell_slots_level_01: 4,
  spell_slots_level_02: 2,
  spell_slots_level_03: 0,
  spell_slots_level_04: 0,
  spell_slots_level_05: 0
)
Level.create(
  subclass: paladin,
  number: 7,
  prof_bonus: 3,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 0,
  spell_slots_level_04: 0,
  spell_slots_level_05: 0
)
Level.create(
  subclass: paladin,
  number: 8,
  prof_bonus: 3,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 0,
  spell_slots_level_04: 0,
  spell_slots_level_05: 0
)
Level.create(
  subclass: paladin,
  number: 9,
  prof_bonus: 4,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 2,
  spell_slots_level_04: 0,
  spell_slots_level_05: 0
)
Level.create(
  subclass: paladin,
  number: 10,
  prof_bonus: 4,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 2,
  spell_slots_level_04: 0,
  spell_slots_level_05: 0
)
Level.create(
  subclass: paladin,
  number: 11,
  prof_bonus: 4,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 0,
  spell_slots_level_05: 0
)
Level.create(
  subclass: paladin,
  number: 12,
  prof_bonus: 4,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 0,
  spell_slots_level_05: 0
)
Level.create(
  subclass: paladin,
  number: 13,
  prof_bonus: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 1,
  spell_slots_level_05: 0
)
Level.create(
  subclass: paladin,
  number: 14,
  prof_bonus: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 1,
  spell_slots_level_05: 0
)
Level.create(
  subclass: paladin,
  number: 15,
  prof_bonus: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 2,
  spell_slots_level_05: 0
)
Level.create(
  subclass: paladin,
  number: 16,
  prof_bonus: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 2,
  spell_slots_level_05: 0
)
Level.create(
  subclass: paladin,
  number: 17,
  prof_bonus: 6,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 1
)
Level.create(
  subclass: paladin,
  number: 18,
  prof_bonus: 6,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 1
)
Level.create(
  subclass: paladin,
  number: 19,
  prof_bonus: 6,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 2
)
Level.create(
  subclass: paladin,
  number: 20,
  prof_bonus: 6,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 2
)

# == OATH OF VENGENCE =====================
paladin = Subclass.find_by(name: 'Oath of Vengence')
Level.create(
  subclass: paladin,
  number: 3,
  prof_bonus: 2,
  spell_slots_level_01: 3,
  spell_slots_level_02: 0,
  spell_slots_level_03: 0,
  spell_slots_level_04: 0,
  spell_slots_level_05: 0
)
Level.create(
  subclass: paladin,
  number: 4,
  prof_bonus: 2,
  spell_slots_level_01: 3,
  spell_slots_level_02: 0,
  spell_slots_level_03: 0,
  spell_slots_level_04: 0,
  spell_slots_level_05: 0
)
Level.create(
  subclass: paladin,
  number: 5,
  prof_bonus: 3,
  spell_slots_level_01: 4,
  spell_slots_level_02: 2,
  spell_slots_level_03: 0,
  spell_slots_level_04: 0,
  spell_slots_level_05: 0
)
Level.create(
  subclass: paladin,
  number: 6,
  prof_bonus: 3,
  spell_slots_level_01: 4,
  spell_slots_level_02: 2,
  spell_slots_level_03: 0,
  spell_slots_level_04: 0,
  spell_slots_level_05: 0
)
Level.create(
  subclass: paladin,
  number: 7,
  prof_bonus: 3,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 0,
  spell_slots_level_04: 0,
  spell_slots_level_05: 0
)
Level.create(
  subclass: paladin,
  number: 8,
  prof_bonus: 3,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 0,
  spell_slots_level_04: 0,
  spell_slots_level_05: 0
)
Level.create(
  subclass: paladin,
  number: 9,
  prof_bonus: 4,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 2,
  spell_slots_level_04: 0,
  spell_slots_level_05: 0
)
Level.create(
  subclass: paladin,
  number: 10,
  prof_bonus: 4,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 2,
  spell_slots_level_04: 0,
  spell_slots_level_05: 0
)
Level.create(
  subclass: paladin,
  number: 11,
  prof_bonus: 4,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 0,
  spell_slots_level_05: 0
)
Level.create(
  subclass: paladin,
  number: 12,
  prof_bonus: 4,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 0,
  spell_slots_level_05: 0
)
Level.create(
  subclass: paladin,
  number: 13,
  prof_bonus: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 1,
  spell_slots_level_05: 0
)
Level.create(
  subclass: paladin,
  number: 14,
  prof_bonus: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 1,
  spell_slots_level_05: 0
)
Level.create(
  subclass: paladin,
  number: 15,
  prof_bonus: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 2,
  spell_slots_level_05: 0
)
Level.create(
  subclass: paladin,
  number: 16,
  prof_bonus: 5,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 2,
  spell_slots_level_05: 0
)
Level.create(
  subclass: paladin,
  number: 17,
  prof_bonus: 6,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 1
)
Level.create(
  subclass: paladin,
  number: 18,
  prof_bonus: 6,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 1
)
Level.create(
  subclass: paladin,
  number: 19,
  prof_bonus: 6,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 2
)
Level.create(
  subclass: paladin,
  number: 20,
  prof_bonus: 6,
  spell_slots_level_01: 4,
  spell_slots_level_02: 3,
  spell_slots_level_03: 3,
  spell_slots_level_04: 3,
  spell_slots_level_05: 2
)
