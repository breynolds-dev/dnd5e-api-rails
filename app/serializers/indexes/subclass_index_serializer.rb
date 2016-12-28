class Indexes::SubclassIndexSerializer < RouteSerializer
  attributes :class_name, :subclasses, :links

  def class_name
    object.name
  end

  def subclasses
    object.subclasses.collect do |subcls|
      {
        name: subcls.name,
        description: subcls.description,
        url: make_subclass_link(subcls)
      } unless subcls.name == class_name
    end.compact
  end

  def links
    links = {}
    links.store(make_params(class_name), make_class_link(object))
    links.store('subclasses', subclasses_links)
    links
  end

  def subclasses_links
    links = {}
    object.subclasses.each do |subcls|
      unless class_name == subcls.name
        links.store(make_params(subcls.name), make_subclass_link(subcls))
      end
    end
    links
  end
end
