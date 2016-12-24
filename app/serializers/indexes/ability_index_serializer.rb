class Indexes::AbilityIndexSerializer < RouteSerializer
  attributes :name, :url

  def url
    "#{root_url}/abilities/#{make_params(object.name)}"
  end
end
