class Indexes::ClassLevelIndexSerializer < RouteSerializer
  attributes :name, :url, :subclasses

  def url
    "#{root_url}/classes/#{make_params(object.name)}"
  end

  def subclasses
    #
  end
end
