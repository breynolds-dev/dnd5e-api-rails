# == RACE ===========================
# t.string :race_name
# t.text :description
# t.string :stats
# t.string :age_description
# t.integer :age_min
# t.integer :age_max
# t.string :size_description
# t.string :size
# t.integer :min_height
# t.integer :max_height
# t.integer :min_weight
# t.integer :max_weight
# t.integer :speed
# t.string :misc
@rock_gnome = Race.create(
  race_name: 'Rock Gnome',
  description: 'As a rock gnome, you have a natural inventiveness and hardiness beyond that of other gnomes.',
  stats: [0, 0, 1, 2, 0, 0],
  age_description: 'Gnomes mature at the same rate humans do, and most are expected to settle down into an adult life by around age 40. They can live 350 to almost 500 years.',
  age_min: 40,
  age_max: 500,
  size_description: 'Gnomes are between 3 and 4 feet tall and average about 40 pounds. Your size is Small.',
  size: 'small',
  min_height: 36,
  max_height: 48,
  min_weight: 30,
  max_weight: 50,
  speed: 30,
  misc: ''
  # traits: darkvision, gnome_cunning, artificers_lore, tinker
)

# == TRAIT ===========================
# t.string :race_name
# t.text :description
# t.string :range
@darkvision = Trait.create(
  race_name: 'Darkvision',
  description: 'Accustomed to life underground, you have superior vision in dark and dim conditions. You can see in dim light within 60 feet of you as if it were bright light, and in darkness as if it were dim light. You can’t discern color in darkness, only shades of gray',
  range: '60'
)

@gnome_cunning = Trait.create(
  race_name: 'Gnome Cunning',
  description: 'You have advantage on all Intelligence, Wisdom, and Charisma saving throws against magic.',
  range: 'Self'
)

@artificers_lore = Trait.create(
  race_name: 'Artificiers Lore',
  description: 'Whenever you make an Intelligence (History) check related to magic items, alchemical objects, or technological devices, you can add twice your proficiency bonus, instead of any proficiency bonus you normally apply.',
  range: 'Self'
)

@tinker = Trait.create(
  race_name: 'Tinker',
  description: 'You have proficiency with artisan’s tools (tinker’s tools). Using those tools, you can spend 1 hour and 10 gp worth of materials to construct a Tiny clockwork device (AC 5, 1 hp). The device ceases to function after 24 hours (unless you spend 1 hour repairing it to keep the device functioning), or when you use your action to dismantle it; at that time, you can reclaim the materials used to create it. You can have up to three such devices active at a time. When you create a device, choose one of the following options: Clockwork Toy: This toy is a clockwork animal, monster, or person, such as a frog, mouse, bird, dragon, or soldier. When placed on the ground, the toy moves 5 feet across the ground on each of your turns in a random direction. It makes noises as appropriate to the creature it represents. Fire Starter: The device produces a miniature flame, which you can use to light a candle, torch, or campfire. Using the device requires your action. Music Box: When opened, this music box plays a single song at a moderate volume. The box stops playing when it reaches the song’s end or when it is closed.',
  range: 'Self'
)

# == LANGUAGES ===========================
# t.string :name
# t.string :script
@common = Language.create(
  name: 'Common',
  script: 'Common'
)

@gnomish = Language.create(
  name: 'Gnomish',
  script: 'Dwarvish'
)

# == JOINS ==============================
JoinsTraits.create(
  race_id: @rock_gnome,
  trait_id: @darkvision
)

JoinsTraits.create(
  race_id: @rock_gnome,
  trait_id: @gnome_cunning
)

JoinsTraits.create(
  race_id: @rock_gnome,
  trait_id: @artificers_lore
)

JoinsTraits.create(
  race_id: @rock_gnome,
  trait_id: @tinker
)

JoinsLanguages.create(
  race_id: @rock_gnome,
  language_id: @common
)

JoinsLanguages.create(
  race_id: @rock_gnome,
  language_id: @gnomish
)