# Classes Model
class ClassName < ApplicationRecord
  has_many :subclasses
  has_many :class_skills
  has_many :class_saving_throws
  has_many :class_primary_abilities
  has_many :levels, through: :subclasses
  has_many :class_skill_options, through: :class_skills, source: 'skill'
  has_many :saving_throws, through: :class_saving_throws, source: 'ability'
  has_many :primary_abilities, through: :class_primary_abilities, source: 'ability'

  def self.valid_class?(name)
    all.collect { |cls| cls.name.downcase }.include?(name.downcase)
  end

  def valid_subclass?(name)
    subclasses.collect { |subcls| subcls.name.downcase }.include?(name.downcase)
  end
end
