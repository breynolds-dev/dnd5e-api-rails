class Race < ApplicationRecord
  has_many :joins_language
  has_many :languages, through: :joins_language
  has_many :joins_trait
  has_many :traits, through: :joins_trait
  has_many :joins_skill
  has_many :skills, through: :joins_skill

  def self.load_race(name)
    if !number?(name)
      find_by_race(name)
    else
      find(name)
    end
  end

  def self.find_by_race(name)
    find_by('lower(name) = ? OR lower(subrace) = ?',
            make_readable(name.downcase), make_readable(name.downcase))
  end
end
