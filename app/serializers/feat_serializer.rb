class FeatSerializer < RouteSerializer
  attributes :id, :name, :description, :prerequisites

  def description
    object.description.split('\n\r')
  end

  def links
    {
      self: "#{root_url}/feats/#{make_params(object.name)}",
      related: related_links
    }
  end
end
