# Classes Model
class Classes < ApplicationRecord
  self.abstract_class = true

  def self.load_resource(subclass, level)
    if subclass && level
      if level.to_i > 2
        find_by_subclass_level(subclass, level)
      else
        find_by_level(level).first
      end
    elsif !number?(subclass) && level.nil?
      find_by_subclass(subclass)
    else
      find_by_level(subclass)
    end
  end

  def self.find_by_level(level)
    where('level = ?', level)
  end

  def self.find_by_subclass(subclass)
    where('lower(subclass) = ?', make_readable(subclass.downcase))
  end

  def self.find_by_subclass_level(subclass, level)
    find_by('lower(subclass) = ? AND level = ?', make_readable(subclass.downcase), level)
  end
end
