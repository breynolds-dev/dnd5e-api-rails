RacialAbilityBonus.create(
  race: Race.find_by(name: "Dragonborn"),
  ability: Ability.find_by(name: "Strength"),
  bonus: 2
)

RacialAbilityBonus.create(
  race: Race.find_by(name: "Dragonborn"),
  ability: Ability.find_by(name: "Charisma"),
  bonus: 1
)
