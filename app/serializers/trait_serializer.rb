class TraitSerializer < RouteSerializer
  attributes :id, :name, :associated_races, :description, :range, :links

  def name
    object.race_name
  end

  def associated_races
    object.races.map do |race|
      if race.subrace.nil?
        {
          name: race.name,
          url: format_race_url(race)
        }
      else
        {
          name: race.subrace,
          url: format_race_url(race)
        }
      end
    end
  end

  def links
    {
      self: "#{root_url}/traits/#{make_params(object.race_name)}",
      race: race_path
    }
  end

  def race_path
    race_path_list = {}
    object.races.each do |race|
      race_path_list.store(format_race_name(race), format_race_url(race))
    end
    race_path_list
  end

  def format_race_name(race)
    if race.subrace.nil?
      make_params(race.name)
    else
      make_params(race.subrace)
    end
  end

  def format_race_url(race)
    if race.subrace.nil?
      "#{root_url}/races/#{make_params(race.name)}"
    else
      "#{root_url}/races/#{make_params(race.name)}/#{make_params(race.subrace)}"
    end
  end
end
