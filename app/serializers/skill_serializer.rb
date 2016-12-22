class SkillSerializer < RouteSerializer
  attributes :id, :name, :ability, :description, :links

  def description
    object.desc.split('\n\r')
  end

  def links
    {
      self: "#{root_url}/skills/#{make_params(object.name)}"
    }
  end
end