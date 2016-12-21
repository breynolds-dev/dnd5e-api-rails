class Skill < ApplicationRecord
  has_one :joins_skill
  has_one :race, through: :joins_skill

  def self.load_skill(skill)
    find_by('lower(name) = ?', make_readable(skill))
  end
end
