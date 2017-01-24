class Indexes::FeatIndexSerializer < RouteSerializer
  attributes :name, :url

  def url
    "#{root_url}/feats/#{make_params(object.name)}"
  end
end
