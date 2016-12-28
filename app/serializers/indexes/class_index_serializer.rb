class Indexes::ClassIndexSerializer < RouteSerializer
  attributes :name, :url, :subclasses

  def url
    make_class_link(object)
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
