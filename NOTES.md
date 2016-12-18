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
