class Barbarian < ApplicationRecord
  def self.load_resource(subclass, level)
    if subclass && level
      if level.to_i > 2
        Barbarian.find_by(path: subclass, level: level)
      else
        Barbarian.find_by(level: level)
      end
    elsif !number?(subclass) && level.nil?
      Barbarian.where(path: subclass)
    else
      Barbarian.find(subclass)
    end
  end

  def self.number?(string)
    true if Float(string) rescue false
  end
end
