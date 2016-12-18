# Classes Model
class Classes < ApplicationRecord
  self.abstract_class = true

  def self.load_resource(subclass, level)
    if subclass && level
      if level.to_i > 2
        find_by(subclass: subclass, level: level)
      else
        find_by(level: level)
      end
    elsif !number?(subclass) && level.nil?
      where(subclass: subclass)
    else
      where(level: subclass)
    end
  end

  def self.number?(string)
    true if Float(string) rescue false
  end
end
