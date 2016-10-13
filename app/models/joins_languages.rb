class JoinsLanguages < ApplicationRecord
  has_many :races
  belongs_to :language
end
