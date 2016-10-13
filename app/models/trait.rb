class Trait < ApplicationRecord
  has_one :joins_trait
  has_one :race, through: :joins_trait
end
