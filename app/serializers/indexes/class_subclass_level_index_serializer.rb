class Indexes::ClassSubclassLevelIndexSerializer < RouteSerializer
  attributes :id, :subclass, :level, :url

  def level
    object.number
  end

  def url
    "#{root_url}/classes/#{make_params(object.class_name.name)}/#{make_params(object.subclass)}/#{object.number}"
  end
end
