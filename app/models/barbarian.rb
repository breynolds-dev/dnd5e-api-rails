class Barbarian < ApplicationRecord
  def load_resource(subclass, level)
    if subclass && level
      Barbarian.find_by(subclass: subclass, level: level)
    else if !subclass.is_number? && level.empty?
      Barbarian.find_by(subclass: subclass)
    else
      Barbarian.find(subclass)
    end
  end
  
  private
  
  def is_number?
    self.to_f.to_s == self.to_s || self.to_i.to_s == self.to_s
  end
end
