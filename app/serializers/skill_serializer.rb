class SkillSerializer < RouteSerializer
  attributes :id, :name, :ability, :description, :links

  def description
    object.desc.split('\n\r')
  end

  def ability
    {
      name: object.ability.name,
      url: "#{root_url}/ability/#{make_params(object.ability.name)}"
    }
  end

  def links
    {
      self: "#{root_url}/skills/#{make_params(object.name)}",
      ability: "#{root_url}/ability/#{make_params(object.ability.name)}"
    }
  end
end
