class JoinsTraits < ApplicationRecord
  belongs_to :trait
  has_one :race
end
