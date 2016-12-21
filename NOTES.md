Namespacing the Classes out as well as the subdirectory of our API

api.5e-api.com/v1/classes/barbarian
api.5e-api.com/v1/classes/rogue/thief/3

Classes::Barbarian
Classes::Rogue

Look into changing the Races paths to allow for sub races similar to the
classes.

api.5e-api.com/v1/races/human
api.5e-api.com/v1/races/elf/dark_elf (or drow)
api.5e-api.com/v1/races/gnome/deep_gnome

* This could cause problems with our main race entry for a class, like elf,
  if we went to v1/races/elf it would return a list of all of the elf
  subclasses, when we might just want the elf itself, and not the subclasses

  /v1/classes/1/2/3  ==>  /v1/classes/barbarian/totem-warrior/3

  match '1' to class id's
    barbarian => 1
    bard => 2
    cleric => 3
    druid => 4
    .
    .
    .

  match '2' to subclass id's depending on class
    barbarian:
      berserker => 1
      totem warrior => 2
    bard
      college of lore => 1
      college of valor => 2
    .
    .
    .

  match '3' to subclass level
