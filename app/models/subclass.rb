class Subclass < ApplicationRecord
  belongs_to :class_name
  has_many :levels
end
