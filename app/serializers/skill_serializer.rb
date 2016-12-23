class SkillSerializer < RouteSerializer
  attributes :id, :name, :ability, :description, :links

  def description
    object.desc.split('\n\r')
  end

  def ability
    {
      name: object.ability.name,
      url: "#{root_url}/abilities/#{make_params(object.ability.name)}"
    }
  end

  def links
    {
      self: "#{root_url}/skills/#{make_params(object.name)}",
      related: related_links
    }
  end

  def related_links
    related_links = {}
    related_links.store(make_params(object.ability.name), "#{root_url}/abilities/#{make_params(object.ability.name)}")
    related_links
  end
end
