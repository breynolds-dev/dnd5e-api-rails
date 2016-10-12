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
@rock_gnome = Race.new(
  race_name: 'Rock Gnome',
  description: '',
  stats: [0, 0, 1, 2, 0, 0],
  age_description: '',
  age_min: 17,
  age_max: 100,
  size_description: '',
  size: 'small',
  min_height: 75,
  max_height: 150,
  min_weight: 100,
  max_weight: 300,
  speed: 30,
  misc: ''
  # traits: darkvision, gnome_cunning, artificers_lore, tinker
)

Trait.new(
  race_name: '',
  description: '',
  range: ''
)
