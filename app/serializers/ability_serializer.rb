class AbilitySerializer < RouteSerializer
  attributes :id, :name, :description, :measures, :important_for

  def links
    {
      self: "#{root_url}/abilities/#{make_params(object.name)}"
    }
  end
end
