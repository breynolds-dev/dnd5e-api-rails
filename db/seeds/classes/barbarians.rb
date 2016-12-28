barbarian = ClassName.find_by(name: 'Barbarian')
Level.create(
  class_name: barbarian,
  number: 1,
  prof_bonus: 2,
  rage_count: 1,
  rage_damage_bonus: 2
)
Level.create(
  class_name: barbarian,
  number: 2,
  prof_bonus: 2,
  rage_count: 2,
  rage_damage_bonus: 2
)

# == BERSERKER ============================
berserker = Subclass.find_by(name: 'Berserker')
Level.create(
  subclass: berserker,
  number: 3,
  prof_bonus: 2,
  rage_count: 3,
  rage_damage_bonus: 2
)
Level.create(
  subclass: berserker,
  number: 4,
  prof_bonus: 2,
  rage_count: 3,
  rage_damage_bonus: 2
)
Level.create(
  subclass: berserker,
  number: 5,
  prof_bonus: 3,
  rage_count: 3,
  rage_damage_bonus: 2
)
Level.create(
  subclass: berserker,
  number: 6,
  prof_bonus: 3,
  rage_count: 4,
  rage_damage_bonus: 2
)
Level.create(
  subclass: berserker,
  number: 7,
  prof_bonus: 3,
  rage_count: 4,
  rage_damage_bonus: 2
)
Level.create(
  subclass: berserker,
  number: 8,
  prof_bonus: 3,
  rage_count: 4,
  rage_damage_bonus: 2
)
Level.create(
  subclass: berserker,
  number: 9,
  prof_bonus: 4,
  rage_count: 4,
  rage_damage_bonus: 3
)
Level.create(
  subclass: berserker,
  number: 10,
  prof_bonus: 4,
  rage_count: 4,
  rage_damage_bonus: 3
)
Level.create(
  subclass: berserker,
  number: 11,
  prof_bonus: 4,
  rage_count: 4,
  rage_damage_bonus: 4
)
Level.create(
  subclass: berserker,
  number: 12,
  prof_bonus: 4,
  rage_count: 5,
  rage_damage_bonus: 3
)
Level.create(
  subclass: berserker,
  number: 13,
  prof_bonus: 5,
  rage_count: 5,
  rage_damage_bonus: 3
)
Level.create(
  subclass: berserker,
  number: 14,
  prof_bonus: 5,
  rage_count: 5,
  rage_damage_bonus: 3
)
Level.create(
  subclass: berserker,
  number: 15,
  prof_bonus: 5,
  rage_count: 5,
  rage_damage_bonus: 3
)
Level.create(
  subclass: berserker,
  number: 16,
  prof_bonus: 5,
  rage_count: 5,
  rage_damage_bonus: 4
)
Level.create(
  subclass: berserker,
  number: 17,
  prof_bonus: 6,
  rage_count: 6,
  rage_damage_bonus: 4
)
Level.create(
  subclass: berserker,
  number: 18,
  prof_bonus: 6,
  rage_count: 6,
  rage_damage_bonus: 4
)
Level.create(
  subclass: berserker,
  number: 19,
  prof_bonus: 6,
  rage_count: 6,
  rage_damage_bonus: 4
)
Level.create(
  subclass: berserker,
  number: 20,
  prof_bonus: 6,
  rage_count: 0, # convert to "Unlimited via Serializer"
  rage_damage_bonus: 4
)

# == TOTEM WARRIOR ========================
totem_warrior = Subclass.find_by(name: 'Totem Warrior')
Level.create(
  subclass: totem_warrior,
  number: 3,
  prof_bonus: 2,
  rage_count: 3,
  rage_damage_bonus: 2
)
Level.create(
  subclass: totem_warrior,
  number: 4,
  prof_bonus: 2,
  rage_count: 3,
  rage_damage_bonus: 2
)
Level.create(
  subclass: totem_warrior,
  number: 5,
  prof_bonus: 3,
  rage_count: 3,
  rage_damage_bonus: 2
)
Level.create(
  subclass: totem_warrior,
  number: 6,
  prof_bonus: 3,
  rage_count: 4,
  rage_damage_bonus: 2
)
Level.create(
  subclass: totem_warrior,
  number: 7,
  prof_bonus: 3,
  rage_count: 4,
  rage_damage_bonus: 2
)
Level.create(
  subclass: totem_warrior,
  number: 8,
  prof_bonus: 3,
  rage_count: 4,
  rage_damage_bonus: 2
)
Level.create(
  subclass: totem_warrior,
  number: 9,
  prof_bonus: 4,
  rage_count: 4,
  rage_damage_bonus: 3
)
Level.create(
  subclass: totem_warrior,
  number: 10,
  prof_bonus: 4,
  rage_count: 4,
  rage_damage_bonus: 3
)
Level.create(
  subclass: totem_warrior,
  number: 11,
  prof_bonus: 4,
  rage_count: 4,
  rage_damage_bonus: 4
)
Level.create(
  subclass: totem_warrior,
  number: 12,
  prof_bonus: 4,
  rage_count: 5,
  rage_damage_bonus: 3
)
Level.create(
  subclass: totem_warrior,
  number: 13,
  prof_bonus: 5,
  rage_count: 5,
  rage_damage_bonus: 3
)
Level.create(
  subclass: totem_warrior,
  number: 14,
  prof_bonus: 5,
  rage_count: 5,
  rage_damage_bonus: 3
)
Level.create(
  subclass: totem_warrior,
  number: 15,
  prof_bonus: 5,
  rage_count: 5,
  rage_damage_bonus: 3
)
Level.create(
  subclass: totem_warrior,
  number: 16,
  prof_bonus: 5,
  rage_count: 5,
  rage_damage_bonus: 4
)
Level.create(
  subclass: totem_warrior,
  number: 17,
  prof_bonus: 6,
  rage_count: 6,
  rage_damage_bonus: 4
)
Level.create(
  subclass: totem_warrior,
  number: 18,
  prof_bonus: 6,
  rage_count: 6,
  rage_damage_bonus: 4
)
Level.create(
  subclass: totem_warrior,
  number: 19,
  prof_bonus: 6,
  rage_count: 6,
  rage_damage_bonus: 4
)
Level.create(
  subclass: totem_warrior,
  number: 20,
  prof_bonus: 6,
  rage_count: 0, # convert to "Unlimited via Serializer"
  rage_damage_bonus: 4
)
