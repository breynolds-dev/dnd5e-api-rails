class Race < ApplicationRecord
  has_many :languages
  has_many :traits
end
