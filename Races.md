# Race Model Information
# ==============================================================================
# race_table
# - race_name
# - description
# - stats (array of our stats STR,DEX,CON,INT,WIS,CHA)
# - age_description
# - age_min
# - age_max
# - size_description
# - size
# - min_height
# - max_height
# - min_weight
# - max_weight
# - speed (in feet)
# - misc
# ==============================================================================
# languages_table
# - name of the language
# - written script tied to said lanugage
# ==============================================================================
# traits_table
# - race_name
# - description of trait for that race
# - range for the trait in feet
# ==============================================================================

races = {
    "elf_high": {
        "race": "elf",
        "subrace": "high",
        "size": "medium",
        "alignment": ["chaotic", "good"],
        "age": [100, 750],  # min (adult), max (elderly)
        "statMod": {
            "dex": 2,
            "int": 1
        },
        "baseHeight": 54, # height 2d10, weight 1d4
        "baseWeight": 90,
        "modHeight": (random.randint(1, 10) + random.randint(1, 10)),
        "modWeight": (random.randint(1, 4)),
        "speed": 30,
        "vision": "dark60",
        "skill": ["perception"],
        "equipment": ["longsword", "shortsword", "shortbow", "longbow"],
        "resist": [""],
        "language": ["common", "elvish", random.choice(dndMisc.misc['languages'])],
        "spells": [""],
        "misc": {
            "power": ["fey ancestry", "trance", "sunlight sensitivity", "cantrip"]
        }
    },
    "elf_wood": {
        "race": "elf",
        "subrace": "wood",
        "size": "medium",
        "alignment": ["chaotic", "good"],
        "age": [100, 750],  # min (adult), max (elderly)
        "statMod": {
            "dex": 2,
            "wis": 1
        },
        "baseHeight": 54, # height 2d10, weight 1d4
        "baseWeight": 100,
        "modHeight": (random.randint(1, 10) + random.randint(1, 10)),
        "modWeight": (random.randint(1, 4)),
        "speed": 35,
        "vision": "dark60",
        "skill": ["perception"],
        "equipment": ["longsword", "shortsword", "shortbow", "longbow"],
        "resist": [""],
        "language": ["common", "elvish"],
        "spells": [""],
        "misc": {
            "power": ["fey ancestry", "trance", "sunlight sensitivity", "mask of the wild"]
        }
    },
    "elf_dark": {
        "race": "elf",
        "subrace": "dark",
        "size": "medium",
        "alignment": ["chaotic", "evil"],
        "age": [100, 750],  # min (adult), max (elderly)
        "statMod": {
            "dex": 2,
            "cha": 1
        },
        "baseHeight": 53, # height 2d6, weight 1d6
        "baseWeight": 75,
        "modHeight": (random.randint(1, 6) + random.randint(1, 6)),
        "modWeight": (random.randint(1, 6)),
        "speed": 30,
        "vision": "dark120",
        "skill": ["perception"],
        "equipment": ["rapier", "shortsword", "hand crossbow"],
        "resist": [""],
        "language": ["common", "elvish"],
        "spells": ["dancing lights", "faerie fire", "darkness"],
        "misc": {
            "power": ["fey ancestry", "trance", "sunlight sensitivity"]
        }
    },
    "dwarf_hill": {
        "race": "dwarf",
        "subrace": "hill",
        "size": "medium",
        "alignment": ["lawful"],
        "age": [50, 350],  # min (adult), max (elderly)
        "statMod": {
            "con": 2,
            "wis": 1
        },
        "baseHeight": 44, # height 2d4, weight 2d6
        "baseWeight": 115,
        "modHeight": (random.randint(1, 4) + random.randint(1, 4)),
        "modWeight": (random.randint(1, 6) + random.randint(1, 6)),
        "speed": 25,
        "vision": "dark60",
        "skill": [""],
        "equipment": ["battleaxe", "handaxe", "throwing hammer", "warhammer"],
        "resist": [""],
        "language": ["common", "dwarvish"],
        "spells": ["", ""],
        "misc": {
            "power": ["dwarven resiliance",  "stonecunning", "tool proficiency", "dwarven toughness"]
        }
    },
    "dwarf_mtn": {
        "race": "dwarf",
        "subrace": "mountain",
        "size": "medium",
        "alignment": ["lawful"],
        "age": [50, 350],  # min (adult), max (elderly)
        "statMod": {
            "con": 2,
            "str": 2
        },
        "baseHeight": 48, # height 2d4, weight 2d6
        "baseWeight": 130,
        "modHeight": (random.randint(1, 4) + random.randint(1, 4)),
        "modWeight": (random.randint(1, 6) + random.randint(1, 6)),
        "speed": 25,
        "vision": "dark60",
        "skill": [""],
        "equipment": ["battleaxe", "handaxe", "throwing hammer", "warhammer", "light armor", "medium armor"],
        "resist": [""],
        "language": ["common", "dwarvish"],
        "spells": ["", ""],
        "misc": {
            "power": ["dwarven resiliance",  "stonecunning", "tool proficiency"]
        }
    },
    "gnome_forest": {
        "race": "gnome",
        "subrace": "forest",
        "size": "small",
        "alignment": ["good"],
        "age": [35, 450],  # min (adult), max (elderly)
        "statMod": {
            "int": 2,
            "dex": 1
        },
        "baseHeight": 35, # height 2d4, weight 1
        "baseWeight": 35,
        "modHeight": (random.randint(1, 4) + random.randint(1, 4)),
        "modWeight": (1),
        "speed": 25,
        "vision": "dark60",
        "skill": [""],
        "equipment": [""],
        "resist": [""],
        "language": ["common", "gnomish"],
        "spells": ["", ""],
        "misc": {
            "power": ["Gnome Cunning", "illusion", "speak with beasts"]
        }
    },
    "gnome_rock": {
        "race": "gnome",
        "subrace": "rock",
        "size": "small",
        "alignment": ["good"],
        "age": [35, 450],  # min (adult), max (elderly)
        "statMod": {
            "int": 2,
            "con": 1
        },
        "baseHeight": 35, # height 2d4, weight 1
        "baseWeight": 35,
        "modHeight": (random.randint(1, 4) + random.randint(1, 4)),
        "modWeight": (1),
        "speed": 25,
        "vision": "dark60",
        "skill": [""],
        "equipment": [""],
        "resist": [""],
        "language": ["common", "gnomish"],
        "spells": ["", ""],
        "misc": {
            "power": ["Gnome Cunning", "artificer's lore", "tinker"]
        }
    },
    "human": {
        "race": "human",
        "subrace": "",
        "size": "medium",
        "alignment": [""],
        "age": [18, 80],  # min (adult), max (elderly)
        "statMod": {
            "str": 1,
            "dex": 1,
            "con": 1,
            "int": 1,
            "wis": 1,
            "cha": 1
        },
        "baseHeight": 56, # height 2d10, weight 2d4
        "baseWeight": 110,
        "modHeight": (random.randint(1, 10) + random.randint(1, 10)),
        "modWeight": (random.randint(1, 4) + random.randint(1, 4)),
        "speed": 30,
        "vision": "normal",
        "skill": [""],
        "equipment": [""],
        "resist": [""],
        "language": ["common", random.choice(dndMisc.misc['languages'])],
        "spells": ["", ""],
        "misc": {
            "power": ["", ""]
        }
    },
    "half-elf": {
        "race": "half-elf",
        "subrace": "",
        "size": "medium",
        "alignment": ["chaotic"],
        "age": [20, 200],  # min (adult), max (elderly)
        "statMod": {
            "cha": 2,
            random.choice(["str", "dex", "con", "int", "wis"]): 1  # select 2x
        },
        "baseHeight": 57, # height 2d8, weight 2d4
        "baseWeight": 110,
        "modHeight": (random.randint(1, 8) + random.randint(1, 8)),
        "modWeight": (random.randint(1, 4) + random.randint(1, 4)),
        "speed": 30,
        "vision": "dark60",
        "skill": [random.choice(skillTree), random.choice(skillTree)],
        "equipment": [""],
        "resist": [""],
        "language": ["common", "elven", random.choice(dndMisc.misc['languages'])],
        "spells": ["", ""],
        "misc": {
            "power": ["Fey Ancestry"]
        }
    },
    "half-orc": {
        "race": "half-orc",
        "subrace": "",
        "size": "medium",
        "alignment": ["chaotic", "evil"],
        "age": [14, 70],  # min (adult), max (elderly)
        "statMod": {
            "str": 2,
            "con": 1
        },
        "baseHeight": 58, # height 2d10, weight 2d6
        "baseWeight": 140,
        "modHeight": (random.randint(1, 10) + random.randint(1, 10)),
        "modWeight": (random.randint(1, 6) + random.randint(1, 6)),
        "speed": 30,
        "vision": "dark60",
        "skill": ["intimidation"],
        "equipment": [""],
        "resist": [""],
        "language": ["common", "orc"],
        "spells": ["", ""],
        "misc": {
            "power": ["relentless_endurance", "savage attacks"]
        }
    },
    "halfling_lightfoot": {
        "race": "halfling",
        "subrace": "lightfoot",
        "size": "small",
        "alignment": ["lawful", "good"],
        "age": [20, 250],  # min (adult), max (elderly)
        "statMod": {
            "dex": 2,
            "cha": 1
        },
        "baseHeight": 31, # height 2d4, weight 1
        "baseWeight": 35,
        "modHeight": (random.randint(1, 4) + random.randint(1, 4)),
        "modWeight": (1),
        "speed": 25,
        "vision": "normal",
        "skill": [""],
        "equipment": [""],
        "resist": [""],
        "language": ["common", "halfling"],
        "spells": ["", ""],
        "misc": {
            "power": ["lucky", "brave", "halfling nimbleness", "naturally stealthy"]
        }
    },
    "halfling_stout": {
        "race": "halfling",
        "subrace": "stout",
        "size": "small",
        "alignment": ["lawful", "good"],
        "age": [20, 250],  # min (adult), max (elderly)
        "statMod": {
            "dex": 2,
            "con": 1
        },
        "baseHeight": 31, # height 2d4, weight 1
        "baseWeight": 35,
        "modHeight": (random.randint(1, 4) + random.randint(1, 4)),
        "modWeight": (1),
        "speed": 25,
        "vision": "normal",
        "skill": [""],
        "equipment": [""],
        "resist": ["poison"],
        "language": ["common", "halfling"],
        "spells": ["", ""],
        "misc": {
            "power": ["lucky", "brave", "halfling nimbleness", "stout resiliance"]
        }
    },
    "tiefling": {
        "race": "tiefling",
        "subrace": "",
        "size": "medium",
        "alignment": ["chaotic"],
        "age": [18, 90],  # min (adult), max (elderly)
        "statMod": {
            "cha": 2,
            "int": 1
        },
        "baseHeight": 57, # height 2d8, weight 2d4
        "baseWeight": 110,
        "modHeight": (random.randint(1, 8) + random.randint(1, 8)),
        "modWeight": (random.randint(1, 4) + random.randint(1, 4)),
        "speed": 30,
        "vision": "dark60",
        "skill": [""],
        "equipment": [""],
        "resist": ["fire"],
        "language": ["common", "infernal"],
        "spells": ["thaumaturgy", "darkness"],
        "misc": {
            "power": [""]
        }
    },
    "dragonborn": {
        "race": "dragonborn",
        "subrace": "",
        "size": "medium",
        "alignment": [""],
        "age": [15, 80],  # min (adult), max (elderly)
        "statMod": {
            "str": 2,
            "cha": 1
        },
        "baseHeight": 66, # height 2d8, weight, 2d6
        "baseWeight": 175,
        "modHeight": (random.randint(1, 8) + random.randint(1, 8)),
        "modWeight": (random.randint(1, 6) + random.randint(1, 6)),
        "speed": 30,
        "vision": "normal",
        "skill": [""],
        "equipment": [""],
        "resist": ["draconic ancestry"],
        "language": ["common", "draconic"],
        "spells": ["", ""],
        "misc": {
            "power": ["breath weapon", ""]
        }
    }
