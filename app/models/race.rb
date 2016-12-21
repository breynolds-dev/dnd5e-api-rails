class Race < ApplicationRecord
  has_many :joins_language
  has_many :languages, through: :joins_language
  has_many :joins_trait
  has_many :traits, through: :joins_trait
  has_many :joins_skill
  has_many :skills, through: :joins_skill

  def self.load_race(race, subrace)
    if !number?(race) && !subrace.nil?
      find_by_subrace(race, subrace)
    elsif !number?(race) && subrace.nil?
      find_by_race(race)
    else
      where(id: race)
    end
  end

  def self.find_by_race(race)
    data = where('lower(name) = ?', make_readable(race.downcase))

    if data.empty?
      Error.give_404
    else
      data
    end
  end

  def self.find_by_subrace(race, subrace)
    find_by('lower(name) = ? AND lower(subrace) = ?',
            make_readable(race.downcase), make_readable(subrace.downcase)) ||
      Error.give_404
  end
end
