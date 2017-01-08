class LanguageSerializer < RouteSerializer
  attributes :id, :name, :script, :native_speakers, :links

  def links
    {
      self: "#{root_url}/languages/#{make_params(object.name)}",
    }
  end

  def native_speakers
    object.races.map do |race|
      {
        race: race_name(race),
        url: "#{root_url}/races/#{make_params(race_name(race))}"
      }
    end
  end

  def race_name(race)
    race.subrace ? race.subrace : race.name
  end
end
