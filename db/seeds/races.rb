# == DRAGONBORN ===========================

Race.create(
  name: 'Dragonborn',
  description: 'Description goes here',
  speed: 30,
  darkvision: 0,
  ability_bonuses: '2,0,0,0,0,1',
  min_age: 15,
  max_age: 80,
  age_description: 'Age Description Goes Here',
  size: 'medium',
  size_description: 'Size Description Goes Here',
  min_height: 66,
  max_height: 80,
  min_weight: 175,
  max_weight: 300,
  extra_skill_proficiencies: 0,
  weapon_proficiencies: '',
  armor_proficiencies: ''
  # traits: draconic_ancestry, breath_weapon
)

# == MOUNTAIN DWARF =======================

Race.create(
  name: 'Dwarf',
  subrace: 'Mountain Dwarf',
  description: 'Description goes here',
  speed: 30,
  darkvision: 0,
  ability_bonuses: '0,1,0,2,0,0',
  min_age: 25,
  max_age: 250,
  age_description: 'Age Description Goes Here',
  size: 'small',
  size_description: 'Size Description Goes Here',
  min_height: 36,
  max_height: 48,
  min_weight: 30,
  max_weight: 50,
  extra_skill_proficiencies: 0,
  weapon_proficiencies: '',
  armor_proficiencies: ''
  # traits: darkvision, gnome_cunning, stone_camouflage
  # feat: svirfneblin_magic
)

# == HILL DWARF ===========================

Race.create(
  name: 'Dwarf',
  subrace: 'Hill Dwarf',
  description: 'Description goes here',
  speed: 30,
  darkvision: 0,
  ability_bonuses: '0,1,0,2,0,0',
  min_age: 25,
  max_age: 250,
  age_description: 'Age Description Goes Here',
  size: 'small',
  size_description: 'Size Description Goes Here',
  min_height: 36,
  max_height: 48,
  min_weight: 30,
  max_weight: 50,
  extra_skill_proficiencies: 0,
  weapon_proficiencies: '',
  armor_proficiencies: ''
  # traits: darkvision, gnome_cunning, stone_camouflage
  # feat: svirfneblin_magic
)

# == DUERGAR ==============================

Race.create(
  name: 'Dwarf',
  subrace: 'Duergar',
  description: 'Description goes here',
  speed: 30,
  darkvision: 0,
  ability_bonuses: '0,1,0,2,0,0',
  min_age: 25,
  max_age: 250,
  age_description: 'Age Description Goes Here',
  size: 'small',
  size_description: 'Size Description Goes Here',
  min_height: 36,
  max_height: 48,
  min_weight: 30,
  max_weight: 50,
  extra_skill_proficiencies: 0,
  weapon_proficiencies: '',
  armor_proficiencies: ''
  # traits: darkvision, gnome_cunning, stone_camouflage
  # feat: svirfneblin_magic
)

# == HIGH ELF =============================

Race.create(
  name: 'Elf',
  subrace: 'High Elf',
  description: 'Description goes here',
  speed: 30,
  darkvision: 60,
  ability_bonuses: '0,2,0,1,0,0',
  min_age: 100,
  max_age: 750,
  age_description: 'Although elves reach physical maturity at about the same age as humans, the elven understandi ng of adulthood goes beyond physical growth to encompass worldly experience. An elf typically claims adulthood and an adult name around the age of 100 and can live to be 750 years old.',
  size: 'medium',
  size_description: 'Elves range from under 5 to over 6 feet tall and have slender builds. Your size is Medium.',
  min_height: 54,
  max_height: 72,
  min_weight: 90,
  max_weight: 200,
  extra_skill_proficiencies: 0,
  weapon_proficiencies: '',
  armor_proficiencies: ''
  # traits: fae_ancestry, trance, keen_senses, extra_language, highelf_darkvision
)

# == WOOD ELF =============================

Race.create(
  name: 'Elf',
  subrace: 'Wood Elf',
  description: 'Description goes here',
  speed: 30,
  darkvision: 60,
  ability_bonuses: '0,2,0,0,1,0',
  min_age: 25,
  max_age: 250,
  age_description: 'Age Description Goes Here',
  size: 'medium',
  size_description: 'Size Description Goes Here',
  min_height: 36,
  max_height: 48,
  min_weight: 30,
  max_weight: 50,
  extra_skill_proficiencies: 0,
  weapon_proficiencies: '',
  armor_proficiencies: ''
  # traits: darkvision, gnome_cunning, stone_camouflage
  # feat: svirfneblin_magic
)

# == DROW =================================

Race.create(
  name: 'Elf',
  subrace: 'Dark Elf (Drow)',
  description: 'Description goes here',
  speed: 30,
  darkvision: 120,
  ability_bonuses: '0,1,0,2,0,0',
  min_age: 25,
  max_age: 250,
  age_description: 'Age Description Goes Here',
  size: 'medium',
  size_description: 'Size Description Goes Here',
  min_height: 36,
  max_height: 48,
  min_weight: 30,
  max_weight: 50,
  extra_skill_proficiencies: 0,
  weapon_proficiencies: '',
  armor_proficiencies: ''
  # traits: darkvision, gnome_cunning, stone_camouflage
  # feat: svirfneblin_magic
)

# == AIR GENSAI ===============================

Race.create(
  name: 'Gensai',
  subrace: 'Air Gensai',
  description: 'Description goes here',
  speed: 30,
  darkvision: 0,
  ability_bonuses: '0,1,0,2,0,0',
  min_age: 25,
  max_age: 250,
  age_description: 'Age Description Goes Here',
  size: 'medium',
  size_description: 'Size Description Goes Here',
  min_height: 36,
  max_height: 48,
  min_weight: 30,
  max_weight: 50,
  extra_skill_proficiencies: 0,
  weapon_proficiencies: '',
  armor_proficiencies: ''
)

# == EARTH GENSAI ===============================

Race.create(
  name: 'Gensai',
  subrace: 'Earth Gensai',
  description: 'Description goes here',
  speed: 30,
  darkvision: 0,
  ability_bonuses: '0,1,0,2,0,0',
  min_age: 25,
  max_age: 250,
  age_description: 'Age Description Goes Here',
  size: 'medium',
  size_description: 'Size Description Goes Here',
  min_height: 36,
  max_height: 48,
  min_weight: 30,
  max_weight: 50,
  extra_skill_proficiencies: 0,
  weapon_proficiencies: '',
  armor_proficiencies: ''
)

# == FIRE GENSAI ===============================

Race.create(
  name: 'Gensai',
  subrace: 'Fire Gensai',
  description: 'Description goes here',
  speed: 30,
  darkvision: 0,
  ability_bonuses: '0,1,0,2,0,0',
  min_age: 25,
  max_age: 250,
  age_description: 'Age Description Goes Here',
  size: 'medium',
  size_description: 'Size Description Goes Here',
  min_height: 36,
  max_height: 48,
  min_weight: 30,
  max_weight: 50,
  extra_skill_proficiencies: 0,
  weapon_proficiencies: '',
  armor_proficiencies: ''
)

# == WATER GENSAI ===============================

Race.create(
  name: 'Gensai',
  subrace: 'Water Gensai',
  description: 'Description goes here',
  speed: 30,
  darkvision: 0,
  ability_bonuses: '0,1,0,2,0,0',
  min_age: 25,
  max_age: 250,
  age_description: 'Age Description Goes Here',
  size: 'medium',
  size_description: 'Size Description Goes Here',
  min_height: 36,
  max_height: 48,
  min_weight: 30,
  max_weight: 50,
  extra_skill_proficiencies: 0,
  weapon_proficiencies: '',
  armor_proficiencies: ''
)


# == DEEP GNOME ===========================
Race.create(
  name: 'Gnome',
  subrace: 'Deep Gnome (Svirfneblin)',
  description: 'Forest gnomes and rock gnomes are the gnomes most commonly encountered in the lands of the surface world. There is another subrace of gnomes rarely seen by any surface-dweller: deep gnomes, also known as svirfneblin. Guarded, and suspicious of outsiders, svirfneblin are cunning and taciturn, but can be just as kind-hearted, loyal, and compassionate as their surface cousins. *Born of Deep Earth:* Svirfneblin seem more like creatures of stone than flesh. Their leathery skin is usually a gray, brown, or dun hue that acts as a natural camouflage with the rock around them. Their bodies are gnarled with hard muscle or fat, and they are heavier than their small stature suggests; svirfneblin often weigh 100 pounds or more but rarely stand much more than 3 feet tall. Male svirfneblin are bald from early childhood, although adults can grow stiff beards or mustaches. Females have full heads of hair, and they usually tie their hair back in braids or cut it short to keep it from getting in their way as they work. Svirfneblin are well adapted for their subterranean existence. They have excellent darkvision, and many of them have magical talents that rival the innate spellcasting of the drow and duergar. They are surprisingly strong for their size, enduring toil and danger that would overwhelm most other people. *Master Miners:* Despite their guarded natures, svirfneblin aren’t joyless. They admire skillful work and delicate craftsmanship, just like any other gnome. Svirfneblin love gemstones of all kinds, and they boldly seek out precious stones in the deepest and darkest tunnels. They are also expert gemcutters and miners, and they prize rubies above all other gemstones. *Deep Dwellers:* Svirfneblin are known as deep gnomes because they choose to live far below the earth’s surface. Most svirfneblin never see the light of day. Their homes are well-hidden strongholds concealed by mazelike passages and clever illusions. Vast networks of mine tunnels ring most svirfneblin settlements, guarded by deadly traps and concealed sentries. Once a traveler passes through the outer defenses, the tunnels open up into marvelous cavern-towns carved from the surrounding rock with exquisite care. The svirfneblin are austere in their comforts compared to their surface cousins, but they take great pride in their stonework. Deep gnomes do their best to remain hidden. Even if surface travelers succeed in locating a svirfneblin community, winning their trust can be even more difficult. Those rare travelers who do succeed in befriending deep gnomes find that they are loyal and courageous allies against any foe.  *Scouts and Spies:* Surface-dwelling gnomes often take up the adventurer’s life out of sheer curiosity about the world around them, eager to see new things and meet new people. By comparison, most svirfneblin possess very little wanderlust and rarely travel far from home. They see the surface world as a bewildering place without boundaries and filled with unknown dangers. Nevertheless, a few svirfneblin understand that it is necessary to know something about what is happening on the surface near their hidden refuges. As a result, some svirfneblin become scouts, spies, or messengers who venture abroad, doing their best to avoid attention. These travelers are notoriously close-mouthed about where they come from and what they are up to, but a few eventually learn to trust good-hearted people of the surface world. A few svirfneblin become merchants who deal with other races both above and below ground. Drow, duergar, and other peoples know that svirfneblin are usually neutral in outlook and typically honest in their dealings. Serving as middlemen between races too hostile to deal with each other directly can be lucrative, and it serves an important defensive function; svirfneblin middlemen tend to know more about rumors and threats between rival merchants than anybody else.',
  speed: 25,
  darkvision: 120,
  ability_bonuses: '0,1,0,2,0,0',
  min_age: 25,
  max_age: 250,
  age_description: 'Deep gnomes are short-lived for gnomes. They mature at the same rate humans do and are considered full-grown adults by 25. They live 200 to 250 years, although hard toil and the dangers of the Underdark often claim them before their time.',
  size: 'small',
  size_description: 'A typical svirfneblin stands about 3 to 3 1/2 feet tall and weighs 80 to 120 pounds. Your size is Small.',
  min_height: 36,
  max_height: 42,
  min_weight: 80,
  max_weight: 120,
  extra_skill_proficiencies: 0,
  weapon_proficiencies: '',
  armor_proficiencies: ''
  # traits: superior_darkvision, gnome_cunning, stone_camouflage
  # feat: svirfneblin_magic
)

# == ROCK GNOME ===========================
Race.create(
  name: 'Gnome',
  subrace: 'Rock Gnome',
  description: 'As a rock gnome, you have a natural inventiveness and hardiness beyond that of other gnomes.',
  speed: 30,
  darkvision: 60,
  ability_bonuses: '0,0,1,2,0,0',
  min_age: 40,
  max_age: 500,
  age_description: 'Gnomes mature at the same rate humans do, and most are expected to settle down into an adult life by around age 40. They can live 350 to almost 500 years.',
  size: 'small',
  size_description: 'Gnomes are between 3 and 4 feet tall and average about 40 pounds. Your size is Small.',
  min_height: 36,
  max_height: 48,
  min_weight: 30,
  max_weight: 50,
  extra_skill_proficiencies: 0,
  weapon_proficiencies: '',
  armor_proficiencies: ''
  # traits: darkvision, gnome_cunning, artificers_lore, tinker
)

# == GOLIATH ==============================

Race.create(
  name: 'Goliath',
  description: 'At the highest mountain peaks—far above the slopes where trees grow and where the air is thin and the frigid winds howl—dwell the reclusive goliaths. Few folk can claim to have seen a goliath, and fewer still can claim friendship with them. Goliaths wander a bleak realm of rock, wind, and cold. Their bodies look as if they are carved from mountain stone and give them great physical power. Their spirits take after the wandering wind, making them nomads who wander from peak to peak. Their hearts are infused with the cold regard of their frigid realm, leaving each goliath with the responsibility to earn a place in the tribe or die trying. *Driven Competitors:* Every day brings a new challenge to a goliath. Food, water, and shelter are rare in the uppermost mountain reaches. A single mistake can bring doom to an entire tribe, while an individual’s heroic effort can ensure the entire group’s survival. Goliaths thus place a premium on self-sufficiency and individual skill. They have a compulsion to keep score, counting their deeds and tallying their accomplishments to compare to others. Goliaths love to win, but they see defeat as a prod to improve their skills. This dedication to competition has a dark side. Goliaths are ferocious competitors, but above all else they are driven to outdo their past efforts. If a goliath slays a dragon, he or she might seek out a larger, more powerful wyrm to battle. Few goliath adventurers reach old age, as most die attempting to surpass their past accomplishments. *Fair Play:* For goliaths, competition exists only when it is supported by a level playing field. Competition measures talent, dedication, and effort. Those factors determine survival in their home territory, not reliance on magic items, money, or other elements that can tip the balance one way or the other. Goliaths happily rely on such benefits, but they are careful to remember that such an advantage can always be lost. A goliath who relies too much on them can grow complacent, a recipe for disaster in the mountains. This trait manifests most strongly when goliaths interact with other folk. The relationship between peasants and nobles puzzles goliaths. If a king lacks the intelligence or leadership to lead, then clearly the most talented person in the kingdom should take his place. Goliaths rarely keep such opinions to themselves, and mock folk who rely on society’s structures or rules to maintain power. *Survival of the Fittest:* Among goliaths, any adult who can’t contribute to the tribe is expelled. A lone goliath has little chance of survival, especially an older or weaker one. Goliaths have little pity for adults who can’t take care of themselves, though a sick or injured individual is treated, as a result of the goliath concept of fair play. A permanently injured goliath is still expected to pull his or her weight in the tribe. Typically, such a goliath dies attempting to keep up, or the goliath slips away in the night to seek the cold will of fate. In some ways, the goliath drive to outdo themselves feeds into the grim inevitability of their decline and death. A goliath would much rather die in battle, at the peak of strength and skill, than endure the slow decay of old age. Few folk have ever meet an elderly goliath, and even those goliaths who have left their people grapple with the urge to give up their lives as their physical skills decay. Because of their risk-taking, goliath tribes suffer from a chronic lack of the experience offered by long- term leaders. They hope for innate wisdom in their leadership, for they can rarely count on a wisdom grown with age. *Goliath Names:* Every goliath has three names: a birth name assigned by the newborn’s mother and father, a nickname assigned by the tribal chief, and a family or clan name. A birth name is up to three syllables long. Clan names are five syllables or more and end in a vowel. Birth names are rarely linked to gender. Goliaths see females and males as equal in all things, and they find societies with roles divided by gender to be puzzling or worthy of mockery. To a goliath, the person who is best at a job should be the one tasked with doing it. A goliath’s nickname is a description that can change on the whim of a chieftain or tribal elder. It refers to a notable deed, either a success or failure, committed by the goliath. Goliaths assign and use nicknames with their friends of other races, and change them to refer to an individual’s notable deeds. Goliaths present all three names when identifying themselves, in the order of birth name, nickname, and clan name. In casual conversation, they use their nickname.',
  speed: 30,
  darkvision: 0,
  ability_bonuses: '2,0,1,0,0,0',
  min_age: 18,
  max_age: 80,
  age_description: 'Goliaths have lifespans comparable to humans. They enter adulthood in their late teens and usually live less than a century.',
  size: 'medium',
  size_description: 'Goliaths are between 7 and 8 feet tall and weigh between 280 and 340 pounds. Your size is Medium.',
  min_height: 84,
  max_height: 96,
  min_weight: 280,
  max_weight: 340,
  extra_skill_proficiencies: 0,
  weapon_proficiencies: '',
  armor_proficiencies: ''
  # traits:
  # feat: svirfneblin_magic
)

# == LIGHTFOOT HALFLING ===================

Race.create(
  name: 'Halfling',
  subrace: 'Lightfoot Halfling',
  description: 'Description Goes Here',
  speed: 30,
  darkvision: 0,
  ability_bonuses: '0,1,0,2,0,0',
  min_age: 25,
  max_age: 250,
  age_description: 'Age Description Goes Here',
  size: 'small',
  size_description: 'Size Description Goes Here',
  min_height: 36,
  max_height: 48,
  min_weight: 30,
  max_weight: 50,
  extra_skill_proficiencies: 0,
  weapon_proficiencies: '',
  armor_proficiencies: ''
  # traits: darkvision, gnome_cunning, stone_camouflage
  # feat: svirfneblin_magic
)

# == STOUT HALFLING========================

Race.create(
  name: 'Halfling',
  subrace: 'Stout Halfling',
  description: 'Description Goes Here',
  speed: 30,
  darkvision: 0,
  ability_bonuses: '0,1,0,2,0,0',
  min_age: 25,
  max_age: 250,
  age_description: 'Age Description Goes Here',
  size: 'small',
  size_description: 'Size Description Goes Here',
  min_height: 36,
  max_height: 48,
  min_weight: 30,
  max_weight: 50,
  extra_skill_proficiencies: 0,
  weapon_proficiencies: '',
  armor_proficiencies: ''
  # traits: darkvision, gnome_cunning, stone_camouflage
  # feat: svirfneblin_magic
)

# == GHOSTWISE HALFLING====================

Race.create(
  name: 'Halfling',
  subrace: 'Ghostwise Halfling',
  description: 'Description Goes Here',
  speed: 30,
  darkvision: 0,
  ability_bonuses: '0,1,0,2,0,0',
  min_age: 25,
  max_age: 250,
  age_description: 'Age Description Goes Here',
  size: 'small',
  size_description: 'Size Description Goes Here',
  min_height: 36,
  max_height: 48,
  min_weight: 30,
  max_weight: 50,
  extra_skill_proficiencies: 0,
  weapon_proficiencies: '',
  armor_proficiencies: ''
  # traits: darkvision, gnome_cunning, stone_camouflage
  # feat: svirfneblin_magic
)

# == HALF-ELF =============================

Race.create(
  name: 'Half-Elf',
  description: 'Description Goes Here',
  speed: 30,
  darkvision: 0,
  ability_bonuses: '0,1,0,2,0,0',
  min_age: 25,
  max_age: 250,
  age_description: 'Age Description Goes Here',
  size: 'medium',
  size_description: 'Size Description Goes Here',
  min_height: 36,
  max_height: 48,
  min_weight: 30,
  max_weight: 50,
  extra_skill_proficiencies: 0,
  weapon_proficiencies: '',
  armor_proficiencies: ''
  # traits: darkvision, gnome_cunning, stone_camouflage
  # feat: svirfneblin_magic
)

# == HALF-ORC =============================

Race.create(
  name: 'Half-Orc',
  description: 'Description Goes Here',
  speed: 30,
  darkvision: 0,
  ability_bonuses: '0,1,0,2,0,0',
  min_age: 25,
  max_age: 250,
  age_description: 'Age Description Goes Here',
  size: 'medium',
  size_description: 'Size Description Goes Here',
  min_height: 36,
  max_height: 48,
  min_weight: 30,
  max_weight: 50,
  extra_skill_proficiencies: 0,
  weapon_proficiencies: '',
  armor_proficiencies: ''
  # traits: darkvision, gnome_cunning, stone_camouflage
  # feat: svirfneblin_magic
)

# JoinsTrait.create(
#   race_id: Race.find_by(name: 'Half-Orc').id,
#   trait_id: @human_extra_language.id
# )

# == HUMAN ================================

Race.create(
  name: 'Human',
  description: 'Description Goes Here',
  speed: 30,
  darkvision: 0,
  ability_bonuses: '1,1,1,1,1,1',
  min_age: 18,
  max_age: 80,
  age_description: 'Age Description Goes Here',
  size: 'medium',
  size_description: 'Size Description Goes Here',
  min_height: 56,
  max_height: 80,
  min_weight: 110,
  max_weight: 250,
  extra_skill_proficiencies: 0,
  weapon_proficiencies: '',
  armor_proficiencies: ''
  # traits: human_extra_language
)

# JoinsTrait.create(
#   race_id: @human.id,
#   trait_id: @human_extra_language.id
# )

# == TIEFLING =============================

Race.create(
  name: 'Tiefling',
  description: 'Description Goes Here',
  speed: 30,
  darkvision: 0,
  ability_bonuses: '0,0,0,1,0,2',
  min_age: 18,
  max_age: 90,
  age_description: 'Age Description Goes Here',
  size: 'medium',
  size_description: 'Size Description Goes Here',
  min_height: 57,
  max_height: 80,
  min_weight: 110,
  max_weight: 250,
  extra_skill_proficiencies: 0,
  weapon_proficiencies: '',
  armor_proficiencies: ''
  # traits: tiefling_darkvision, resist_fire
  # spells: thaumaturgy, darkness
)

# JoinsTrait.create(
#   race_id: Race.find_by(name: 'Tiefling').id,
#   trait_id: @tiefling_darkvision.id
# )

# JoinsTrait.create(
#   race_id: Race.find_by(name: 'Tiefling').id,
#   trait_id: @resist_fire.id
# )
