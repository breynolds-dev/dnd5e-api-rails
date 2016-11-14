class RaceSerializer < ActiveModel::Serializer
  attributes :id, :name, :subrace, :description, :speed, :darkvision,
             :stat_bonus, :skills, :extra_skill_proficiencies, :weapon_prof,
             :armor_prof, :min_age, :max_age, :age_description, :size,
             :size_description, :min_height, :max_height, :min_weight,
             :max_weight, :languages, :traits

  def stat_bonus
    stats_array = object.ability_bonuses.split(',')
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

  def description
    object.desc.split('\n\r')
  end
end
