class Indexes::ClassLevelIndexSerializer < RouteSerializer
  attributes :class_name, :levels

  def class_name
    object.name
  end

  def levels
    class_levels = {}
    ClassName.load_subclass_index(object.name).each do |subclass|
      class_levels.store(make_params(subclass), format_levels(subclass))
    end
    class_levels
  end

  def format_levels(subclass)
    level_list = {}
    level_list.store(1, format_level(
      Level.find_by(subclass: object.name, number: 1)))
    level_list.store(2, format_level(
      Level.find_by(subclass: object.name, number: 2)))
    object.levels.where(subclass: subclass).order('number').each do |level|
      level_list.store(level.number, format_level(level))
    end
    level_list
  end

  def format_level(level)
    class_detail_link(object.name, level.subclass, level.number)
  end
end
