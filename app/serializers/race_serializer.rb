class RaceSerializer < ActiveModel::Serializer
  attributes :id, :race_name, :description, :stats, :age_description, :age_min,
             :age_max, :size_description, :size, :min_height, :max_height,
             :min_weight, :max_weight, :speed, :misc, :languages, :traits

  def stats
    stats_array = object.stats.split(',')
    {
      strength: stats_array[0],
      dexterity: stats_array[1],
      constitution: stats_array[2],
      intelligence: stats_array[3],
      wisdom: stats_array[4],
      charisma: stats_array[5]
    }
  end
end
