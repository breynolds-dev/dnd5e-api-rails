class Indexes::ClassIndexSerializer < RouteSerializer
  attributes :name, :url, :subclasses

  def url
    "#{root_url}/classes/#{make_params(object.name)}"
  end

  def subclasses
    subclass_list = {}
    object.subclasses.drop(1).collect do |subclass|
      subclass_list.store(make_params(subclass.name),
                          make_subclass_link(subclass))
    end
    subclass_list
  end
end
