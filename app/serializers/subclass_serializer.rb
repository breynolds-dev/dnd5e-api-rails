class SubclassSerializer < RouteSerializer
  attributes :class_name, :subclass, :description, :levels, :links

  def class_name
    object.class_name.name
  end

  def subclass
    object.name
  end

  def description
    object.description.split('\n\r')
  end

  def levels
    items = {}
    object.levels.collect do |lvl|
      items.store(lvl.number, make_subclass_level_link(lvl.subclass, lvl.number))
    end
    items
  end

  def links
    links = {}
    links.store(make_params(class_name), make_class_link(object.class_name))
    unless class_name == subclass
      links.store(make_params(subclass), make_subclass_link(object))
    end
    links
  end
end
