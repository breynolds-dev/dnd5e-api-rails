class Trait < ApplicationRecord
  has_many :joins_traits
  has_many :races, through: :joins_traits

  def self.load_trait(trait)
    find_by('lower(race_name) = ?', make_readable(trait))
  end
end
