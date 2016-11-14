class RaceSerializer < ActiveModel::Serializer
  attributes :id, :race_name, :description, :speed, :darkvision, :stats,
             :skills, :extra_skill_proficiencies, :weapon_prof, :armor_prof,
             :min_age, :max_age, :age_description, :size, :size_description,
             :min_height, :max_height, :min_weight, :max_weight, :languages,
             :traits

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

  def weapon_prof
    object.weapon_proficiencies.split(',')
  end

  def armor_prof
    object.armor_proficiencies.split(',')
  end
end
