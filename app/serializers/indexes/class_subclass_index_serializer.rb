class Indexes::ClassSubclassIndexSerializer < RouteSerializer
  attributes :type, :subclass, :url

  def type
    Level.find_by(subclass: object).class_name.name
  end

  def subclass
    object
  end

  def url
    "#{root_url}/classes/#{make_params(type)}/#{make_params(object)}"
  end
end
