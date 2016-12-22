# Create Skills Table
Skill.create(
  name: 'Acrobatics',
  ability: Ability.find_by(name: 'Dexterity').id,
  desc: 'Your Dexterity (Acrobatics) check covers your attempt to stay on your feet in a tricky situation, such as when you’re trying to run across a sheet of ice, balance on a tightrope, or stay upright on a rocking ship’s deck. The DM might also call for a Dexterity (Acrobatics) check to see if you can perform acrobatic stunts, including dives, rolls, somersaults, and flips.'
)

Skill.create(
  name: 'Animal Handling',
  ability: Ability.find_by(name: 'Wisdom').id,
  desc: 'When there is any question whether you can calm down a domesticated animal, keep a mount from getting spooked, or intuit an animal’s intentions, the DM might call for a Wisdom (Animal Handling) check. You also make a W isdom (Animal Handling) check to control your mount when you attempt a risky maneuver.'
)

Skill.create(
  name: 'Arcana',
  ability: Ability.find_by(name: 'Intelligence').id,
  desc: 'Your Intelligence (Arcana) check measures your ability to recall lore about spells, m agic items, eldritch symbols, magical traditions, the planes of existence, and the inhabitants of those planes.'
)

Skill.create(
  name: 'Athletics',
  ability: Ability.find_by(name: 'Strength').id,
  desc: 'Your Athletics check covers difficult situations you encounter while climbing, jumping, or swimming. Exam ples include the following activities:\n\rYou attempt to climb a sheer or slippery cliff, avoid hazards while scaling a wall, or cling to a surface while som ething is trying to knock you off.\n\rYou try to jum p an unusually long distance or pull off a stunt midjump.\n\rYou struggle to swim or stay afloat in treacherous currents, storm -tossed waves, or areas o f thick seaweed.\n\rOr another creature tries to push or pull you underwater or otherwise interfere with your swimming.\n\r'
)

Skill.create(
  name: 'Deception',
  ability: Ability.find_by(name: 'Charisma').id,
  desc: 'Your Charisma (Deception) check determines whether you can convincingly hide the truth, either verbally or through your actions. This deception can encom pass everything from misleading others through ambiguity to telling outright lies. Typical situations include trying to fast-talk a guard, con a merchant, earn money through gambling, pass yourself off in a disguise, dull som eone’s suspicions with false assurances, or maintain a straight face while telling a blatant lie.'
)

Skill.create(
  name: 'History',
  ability: Ability.find_by(name: 'Intelligence').id,
  desc: 'Your Intelligence (History) check mseasures your ability to recall lore about historical events, legendary people, ancient kingdom s, past disputes, recent wars, and lost civilizations.'
)

Skill.create(
  name: 'Insight',
  ability: Ability.find_by(name: 'Wisdom').id,
  desc: 'Your Wisdom (Insight) check decides whether you can determine the true intentions of a creature, such as when searching out a lie or predicting someone’s next move. Doing so involves gleaning clues from body language, speech habits, and changes in mannerisms.'
)

Skill.create(
  name: 'Intimidation',
  ability: Ability.find_by(name: 'Charisma').id,
  desc: 'When you attempt to influence someone through overt threats, hostile actions, and physical violence, the DM might ask you to make a Charisma (Intimidation) check. Examples include trying to pry information out of a prisoner, convincing street thugs to back down from a confrontation, or using the edge of a broken bottle to convince a sneering vizier to reconsider a decision.'
)

Skill.create(
  name: 'Investigation',
  ability: Ability.find_by(name: 'Intelligence').id,
  desc: 'When you look around for clues and make deductions based on those clues, you make an Intelligence (Investigation) check. You might deduce the location of a hidden object, discern from the appearance of a wound what kind of weapon dealt it, or determine the weakest point in a tunnel that could cause it to collapse. Poring through ancient scrolls in search of a hidden fragment of knowledge might also call for an Intelligence (Investigation) check.'
)

Skill.create(
  name: 'Medicine',
  ability: Ability.find_by(name: 'Wisdom').id,
  desc: 'A Wisdom (Medicine) check lets you try to stabilize a dying com panion or diagnose an illness.'
)

Skill.create(
  name: 'Nature',
  ability: Ability.find_by(name: 'Intelligence').id,
  desc: 'Your Intelligence (Nature) check measures your ability to recall lore about terrain, plants and animals, the weather, and natural cycles.'
)

Skill.create(
  name: 'Perception',
  ability: Ability.find_by(name: 'Wisdom').id,
  desc: 'Your Wisdom (Perception) check lets you spot, hear, or otherwise detect the presence of something. It measures your general awareness of your surroundings and the keenness of your senses.\n\rFor example, you might try to hear a conversation through a closed door, eavesdrop under an open window, or hear monsters moving stealthily in the forest. Or you might try to spot things that are obscured or easy to miss, whether they are orcs lying in ambush on a road, thugs hiding in the shadows of an alley, or candlelight under a closed secret door.\n\rFinding a Hidden Object: When your character searches for a hidden object such as a secret door or a trap, the DM typically asks you to make a Wisdom (Perception) check. Such a check can be used to find hidden details or other information and clues that you might otherwise overlook.\n\rIn most cases, you need to describe where you are looking in order for the DM to determine your chance of success. For example, a key is hidden beneath a set of folded clothes in the top drawer of a bureau. If you tell the DM that you pace around the room, looking at the walls and furniture for clues, you have no chance of finding the key, regardless of your Wisdom (Perception) check result. You would have to specify that you were opening the drawers or searching the bureau in order to have any chance of success.'
)

Skill.create(
  name: 'Performance',
  ability: Ability.find_by(name: 'Charisma').id,
  desc: 'Your Charisma (Perform ance) check determines how well you can delight an audience with music, dance, acting, storytelling, or som e other form of entertainment.'
)

Skill.create(
  name: 'Persuasion',
  ability: Ability.find_by(name: 'Charisma').id,
  desc: 'When you attempt to influence someone or a group of people with tact, social graces, or good nature, the DM might ask you to make a Charisma (Persuasion) check. Typically, you use persuasion when acting in good faith, to foster friendships, make cordial requests, or exhibit proper etiquette. Examples of persuading others include convincing a chamberlain to let your party see the king, negotiating peace between warring tribes, or inspiring a crow d of townsfolk.'
)

Skill.create(
  name: 'Religion',
  ability: Ability.find_by(name: 'Intelligence').id,
  desc: 'Your Intelligence (Religion) check measures your ability to recall lore about deities, rites and prayers, religious hierarchies, holy symbols, and the practice of secret cults.'
)

Skill.create(
  name: 'Sleight of Hand',
  ability: Ability.find_by(name: 'Dexterity').id,
  desc: 'Whenever you attempt an act of legerdemain or manual trickery, such as planting something on som eone else or concealing an object on your person, make a Dexterity (Sleight of Hand) check.  The DM might also call for a Dexterity (Sleight of Hand) check to determine whether you can lift a coin purse off another person or slip something out of another person’s pocket.'
)

Skill.create(
  name: 'Stealth',
  ability: Ability.find_by(name: 'Dexterity').id,
  desc: 'Make a Dexterity (Stealth) check when you attempt to conceal yourself from enemies, slink past guards, slip away without being noticed, or sneak up on someone without being seen or heard.\n\rHiding: When you try to hide, make a Dexterity (Stealth) check. Until you are discovered or you stop hiding, that checks total is contested by the Wisdom (Perception) check of any creature that actively searches for signs of your presence.\n\rYou cant hide from a creature that can see you, and if you make noise (such as shouting a warning or knocking over a vase), you give away your position. An invisible creature can’t be seen, so it can always try to hide. Signs of its passage might still be noticed, however, and it still has to stay quiet.\n\rIn combat, most creatures stay alert for signs of danger all around, so if you come out of hiding and approach a creature, it usually sees you. However, under certain circumstances, the Dungeon Master might allow you to stay hidden as you approach a creature that is distracted, allowing you to gain advantage on an attack before you are seen.\n\rPassive Perception. When you hide, there’s a chance someone will notice you even if they arent searching. To determine whether such a creature notices you, the DM compares your Dexterity (Stealth) check with that creature’s passive Wisdom (Perception) score, which equals 10 + the creature’s Wisdom modifier, as well as any other bonuses or penalties. If the creature has advantage, add 5. For disadvantage, subtract 5.\n\rFor example, if a 1st-level character (with a proficiency bonus o f +2) has a Wisdom of 15 (a +2 modifier) and proficiency in Perception, he or she has a passive Wisdom (Perception) of 14.\n\rWhat Can You See? One of the main factors in determining whether you can find a hidden creature or object is how well you can see in an area, which might be lightly or heavily obscured.'
)

Skill.create(
  name: 'Survival',
  ability: Ability.find_by(name: 'Wisdom').id,
  desc: 'The DM might ask you to make a Wisdom (Survival) check to follow tracks, hunt wild game, guide your group through frozen wastelands, identify signs that owlbears live nearby, predict the weather, or avoid quicksand and other natural hazards.'
)
