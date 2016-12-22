class TraitSerializer < RouteSerializer
  attributes :id, :name, :associated_race, :description, :range, :links

  def name
    object.race_name
  end

  def associated_race
    if object.race.subrace.nil?
      {
        name: object.race.name,
        url: race_path
      }
    else
      {
        name: object.race.subrace,
        url: race_path
      }
    end
  end

  def links
    {
      self: "#{root_url}/traits/#{make_params(object.race_name)}",
      race: race_path
    }
  end

  def race_path
    if object.race.subrace.nil?
      "#{root_url}/races/#{make_params(object.race.name)}"
    else
      "#{root_url}/races/#{make_params(object.race.name)}/#{make_params(object.race.subrace)}"
    end
  end
end
