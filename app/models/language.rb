class Language < ApplicationRecord
  has_many :joins_language
  has_many :races, through: :joins_language
end
