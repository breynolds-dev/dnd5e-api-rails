class SubclassSerializer < RouteSerializer
  # attributes :level, :class_name, :subclass, :url
  attributes :class_name, :subclass, :levels

  def class_name
    object.first.subclass.class_name.name
  end

  def subclass
    object.first.subclass.name
  end

  def levels
    items = {}
    object.collect do |lvl|
      items.store(lvl.number, make_subclass_level_link(lvl.subclass, lvl.number))
    end
    items
  end
end
