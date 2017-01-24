class FeatSerializer < RouteSerializer
  attributes :id, :name, :description, :prerequisite

  def description
    object.desc.split('\n\r')
  end

  def links
    {
      self: "#{root_url}/feats/#{make_params(object.name)}",
      related: related_links
    }
  end
end
