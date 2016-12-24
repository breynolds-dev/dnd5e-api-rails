class Indexes::ClassLevelIndexSerializer < RouteSerializer
  attributes :levels

  def type
    subclass
  end

  def levels
    levels = object.levels.order(%w(number subclass))

    level = 1
    class_levels = {}
    until level == 21
      class_levels.store(level, levels.collect{|lvl| format_level(lvl) if lvl.number == level}.compact)
      level += 1
    end
    class_levels
  end

  def format_level(level)
    if level.number > 2
      {
        level: level.number,
        subclass: level.subclass,
        url: "#{root_url}/classes/#{make_params(object.name)}/#{make_params(level.subclass)}/#{level.number}"
      }
    else
      {
        level: level.number,
        subclass: level.subclass,
        url: "#{root_url}/classes/#{make_params(object.name)}/#{level.number}"
      }
    end
  end
end
