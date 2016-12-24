class Indexes::ClassIndexSerializer < RouteSerializer
  attributes :name, :url, :subclasses

  def url
    "#{root_url}/classes/#{make_params(object.name)}"
  end

  def subclasses
    object.levels.collect(&:subclass).uniq.drop(1).map do |subclass|
      {
        name: subclass,
        url: "#{root_url}/classes/#{make_params(object.name)}/#{make_params(subclass)}"
      }
    end
  end
end
