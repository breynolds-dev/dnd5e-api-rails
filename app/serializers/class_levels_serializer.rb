class ClassLevelsSerializer < RouteSerializer
  attributes :id, :level, :subclass, :url

  def level
    object.number
  end

  def url
    "#{root_url}/classes/#{make_params(object.class_name.name)}/#{make_params(object.subclass)}/#{object.number}"
  end
end
