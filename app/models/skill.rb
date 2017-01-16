class Skill < ApplicationRecord
  belongs_to :ability
  has_one :racial_skill
  has_one :race, through: :racial_skill

  def self.load_skill(skill)
    find_by('lower(name) = ?', make_readable(skill))
  end
end
