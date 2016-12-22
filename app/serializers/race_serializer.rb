class RaceSerializer < RouteSerializer
  attributes :id, :name, :subrace, :description, :speed, :darkvision,
             :stat_bonus, :skills, :extra_skill_proficiencies,
             :weapon_proficiencies, :armor_proficiencies, :min_age, :max_age,
             :age_description, :size, :size_description, :min_height,
             :max_height, :min_weight, :max_weight, :languages, :traits, :links

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

  def skills
    object.skills.empty? ? nil : object.skills.split(',')
  end

  def weapon_proficiencies
    object.weapon_proficiencies == '' ? nil : object.weapon_proficiencies.split(',')
  end

  def armor_proficiencies
    object.armor_proficiencies == '' ? nil : object.armor_proficiencies.split(',')
  end

  def description
    object.desc.split('\n\r')
  end

  def languages
    object.languages.map do |language|
      {
        name: language.name,
        script: language.script,
        url: "#{root_url}/languages/#{make_params(language.name)}"
      }
    end
  end

  def traits
    trait_list = object.traits.map do |trait|
      {
        name: trait.race_name,
        description: trait.description,
        range: trait.range,
        url: "#{root_url}/traits/#{make_params(trait.race_name)}"
      }
    end

    trait_list.empty? ? nil : trait_list
  end

  def links
    {
      self: "#{root_url}/skills/#{make_params(object.name)}",
      related: related_links
    }
  end

  def related_links
    related_links = {}
    related_links.store('traits', trait_links) unless object.traits.empty?
    related_links.store('languages', language_links) unless object.languages.empty?
    related_links
  end

  def trait_links
    trait_link_list = {}
    object.traits.each do |trait|
      trait_link_list.store(trait.race_name,"#{root_url}/traits/#{make_params(trait.race_name)}")
    end
    trait_link_list
  end

  def language_links
    language_link_list = {}
    object.languages.each do |language|
      language_link_list.store(language.name,"#{root_url}/languages/#{make_params(language.name)}")
    end
    language_link_list
  end
end
