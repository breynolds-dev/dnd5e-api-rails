# Race Model Information
# ==============================================================================
# race_table
# - race
# - subrace
# - description
# - speed
# - darkvision
# - ability_bonuses (Comma Delimited String STR,DEX,CON,INT,WIS,CHA)
# - min_age
# - max_age
# - age_description
# - size
# - size_description
# - min_height
# - max_height
# - min_weight
# - max_weight
# - traits (JOINS)
# - skill_proficiencies (JOINS)
# - extra_skill_proficiencies
# - weapon_proficiencies (Comma Delimited String)
# - armor_proficiencies (Comma Delimited String)
# - languages (JOINS)
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
