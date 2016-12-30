class ClassLevelsSerializer < RouteSerializer
  attributes :class_name, :subclasses

  def class_name
    object.first.class_name.name
  end

  def subclasses
    list = {}
    object.each do |lvl|
      list.store(make_params(lvl.subclass.name), make_link(lvl))
    end
    list
  end

  def make_link(level)
    make_subclass_level_link(level.subclass, level.number)
  end
end
