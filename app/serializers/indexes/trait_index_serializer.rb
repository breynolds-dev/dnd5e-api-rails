class Indexes::TraitIndexSerializer < RouteSerializer
  attributes :name, :url

  def name
    object.race_name
  end

  def url
    "#{root_url}/traits/#{make_params(object.race_name)}"
  end
end
