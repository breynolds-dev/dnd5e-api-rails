class LanguageSerializer < RouteSerializer
  attributes :id, :name, :script, :language_speakers, :links

  def links
    {
      self: "#{root_url}/languages/#{make_params(object.name)}",
    }
  end
  
  def language_speakers
    {
      known_speakers: "#{object.races}"
    }
  end
end
