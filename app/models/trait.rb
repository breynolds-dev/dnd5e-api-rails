class Trait < ApplicationRecord
  has_one :joins_trait
  has_one :race, through: :joins_trait

  def self.load_trait(trait)
    find_by('lower(race_name) = ?', make_readable(trait))
  end
end
