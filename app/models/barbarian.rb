class Barbarian < ApplicationRecord
  def self.load_resource(subclass, level)
    if subclass && level
      Barbarian.find_by(path: subclass, level: level)
    elsif !number?(subclass) && level.nil?
      Barbarian.where(path: subclass)
    else
      Barbarian.find(subclass)
    end
  end

  private

  def self.number?(string)
    true if Float(string) rescue false
  end
end
