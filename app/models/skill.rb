class Skill < ApplicationRecord
  has_one :joins_skill
  has_one :race, through: :joins_skill
end
