# Classes Model
class Classes < ApplicationRecord
  self.abstract_class = true

  def self.load_resource(subclass, level)
    if number?(subclass)
      find(subclass)
    elsif subclass && level
      match_subclass_level(subclass, level)
    elsif !number?(subclass) && level.nil?
      find_by_subclass(subclass)
    else
      find_by_level(subclass)
    end
  end

  def self.match_subclass_level(subclass, level)
    if level.to_i > 2
      find_by_subclass_level(subclass, level)
    else
      find_by_level(level).first
    end
  end

  def self.find_by_level(level)
    data = where('level = ?', level)

    data.empty? ? nil : data
  end

  def self.find_by_subclass(subclass)
    data = where('lower(subclass) = ?', make_readable(subclass.downcase))

    data.empty? ? nil : data
  end

  def self.find_by_subclass_level(subclass, level)
    find_by('lower(subclass) = ? AND level = ?',
            make_readable(subclass.downcase), level)
  end
end
