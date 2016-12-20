# Classes Model
class Classes < ApplicationRecord
  self.abstract_class = true

  def self.load_resource(subclass, level)
    if subclass && level
      if level.to_i > 2
        find_by(subclass: make_readable(subclass), level: level)
      else
        find_by(level: level)
      end
    elsif !number?(subclass) && level.nil?
      ci_find('subclass', make_readable(subclass))
    else
      ci_find('level', make_readable(subclass))
    end
  end
end
