class ClassLevelsSerializer < RouteSerializer
  attributes :id, :level, :subclass, :url

  def level
    object.number
  end

  def url
    "#{root_url}/classes/#{make_params(object.class_name.name)}/#{make_params(object.subclass)}/#{object.number}"
  end

  def links
    {
      self: "#{root_url}/abilities/#{make_params(object.name)}",
      related: related_links
    }
  end

  def related_links
    related_links = {}
    related_links.store('classes', important_for)
    related_links.store('skills', associated_skills) unless object.skills.empty?
    related_links
  end
end
