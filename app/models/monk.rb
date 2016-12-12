class Monk < ApplicationRecord
  def self.load_resource(subclass, level)
    if subclass && level
      if level.to_i > 2
        Monk.find_by(tradition: subclass, level: level)
      else
        Monk.find_by(level: level)
      end
    elsif !number?(subclass) && level.nil?
      Monk.where(tradition: subclass)
    else
      Monk.find(subclass)
    end
  end

  def self.number?(string)
    true if Float(string) rescue false
  end
end
