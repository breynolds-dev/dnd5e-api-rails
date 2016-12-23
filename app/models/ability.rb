class Ability < ApplicationRecord
  has_many :skills

  def self.load_ability(name)
    if !number?(name)
      find_by('lower(name) = ?', make_readable(name.downcase))
    else
      find(name)
    end
  end
end
