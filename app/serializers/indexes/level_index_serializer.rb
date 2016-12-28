class Indexes::LevelIndexSerializer < RouteSerializer
  attributes :class_name, :levels

  def class_name
    object.name
  end

  def levels
    list = {}
    object.subclasses.each do |subcls|
      list.store(make_params(subcls.name), format_levels(subcls))
    end
    list
  end

  def format_levels(subclass)
    list = {}
    subclass.levels.each do |lvl|
      list.store(lvl.number, make_subclass_level_link(lvl.subclass, lvl.number))
    end
    list
  end
end
