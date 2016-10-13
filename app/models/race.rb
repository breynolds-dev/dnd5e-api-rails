class Race < ApplicationRecord
  has_many :joins_language
  has_many :languages, through: :joins_language
  has_many :joins_trait
  has_many :traits, through: :joins_trait
end
