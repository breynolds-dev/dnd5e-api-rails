Feat.create(
  name: 'Alert',
  description: 'Always on the lookout for danger, you gain the following benefits:\n\rYou gain +5 bonus to initiative\n\rYou can\'t be surprised while you are conscious\n\rOther creatures don\'t gain advantage on attack rolls against you as a result of being hidden from you.',
  prerequisites: ''
)

Feat.create(
    name: 'Athlete',
    description: 'You have undergone extensive physical training to gain the following benefits:\n\rIncrease your Strength or Dexterity score by 1, to a maximum of 20\n\rWhen you are prone, standing up uses only 5 feet of your movement\n\rClimbing does not halve your speed\n\rYou can make a running long jump or a running high jump after moving only 5 feet on foot, rather than 10 feet',
    prerequisites: ''
)

Feat.create(
    name: 'Actor',
    description: 'Skilled at mimicry and dramatics, you gain the following benefits\n\rIncrease your Charisma score by 1, to a maximum of 20\n\rYou have advantage on Charisma (Deception) and Charisma (Performance) checks when trying to pass yourself off as a different person\n\rYou can mimic the speech of another person or the sounds made by other creatures.  You must have heard the person speaking or heard the creature make the sound for at least 1 minute.  A successful Wisdom (Insight) check contested by your Charisma (Deception) check allows a listener to determine that the effect was faked',
    prerequisites: ''
)

Feat.create(
    name: 'Charger',
    description: 'When you use your action to Dash, you can use a bonus action to make one melee weapon attack or to shove a creature.\n\rIf you move at least 10 feet in a straight line immediately before taking a bonus this action, you either gain a +5 bonus to the attacks damage roll (if you chose to make a melee attack and hit) or push the target up to 10 feet away from you (if you chose to shove and succeed)',
    prerequisites: ''
)

Feat.create(
    name: 'Crossbow Expert',
    description: 'Thanks to extensive practice with the crossbow, you gain the following benefits:\n\rYou ignore the loading quality of crossbows with which you are proficient.\n\rBeing within 5 feet of a hostile creature doesn’t impose disadvantage on your ranged attack rolls.\n\rWhen you use the Attack action and attack with a one- handed weapon, you can use a bonus action to attack with a loaded hand crossbow you are holding.',
    prerequisites: ''
)

Feat.create(
    name: 'Defensive Duelist',
    description: 'When you are wielding a finesse weapon with which you are proficient and another creature hits you with a melee attack, you can use your reaction to add your proficiency bonus to your AC for that attack, potentially causing the attack to m iss you.',
    prerequisites: 'Dexterity 13 or higher'
)

Feat.create(
    name: 'Dual Wielder',
    description: 'You master fighting with two weapons, gaining the following benefits:\n\rYou gain a +1 bonus to AC while you are wielding a separate melee weapon in each hand.\n\rYou can use two-weapon fighting even when the one- handed melee weapons you are wielding aren’t light.\n\rYou can draw or stow two one-handed weapons when you would normally be able to draw or stow only one.',
    prerequisites: ''
)