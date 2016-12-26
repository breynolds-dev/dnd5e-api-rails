class Ability < ApplicationRecord
  has_many :skills

  def self.load_ability(name)
    find_by('lower(name) = ?', make_readable(name.downcase)) unless number?(name)
  end
end
