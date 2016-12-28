# Classes Model
class ClassName < ApplicationRecord
  has_many :levels
  has_many :subclasses
  has_many :levels, through: :subclasses
  has_many :class_skills
  has_many :class_saving_throws
  has_many :class_primary_abilities
  has_many :class_skill_options, through: :class_skills, source: 'skill'
  has_many :saving_throws, through: :class_saving_throws, source: 'ability'
  has_many :primary_abilities, through: :class_primary_abilities, source: 'ability'

  def self.load_class_index(name)
    find_by('lower(name) = ?', make_readable(name.downcase))
  end

  def self.load_subclass_index(name)
    class_name = ClassName.find_by('lower(name) = ?', make_readable(name.downcase))
    unless class_name.nil?
      levels = class_name.levels
      levels.collect(&:subclass).uniq.drop(1)
    end
  end

  def self.load_subclass_levels_index(name, subclass)
    class_name = ClassName.find_by('lower(name) = ?', make_readable(name.downcase))
    if number?(subclass)
      class_name.levels.collect { |lvl| lvl if lvl.number == subclass.to_i}.compact
    elsif class_name.valid_subclass?(subclass)
      levels = class_name.levels
      levels.collect { |lvl| lvl if lvl.subclass.downcase == make_readable(subclass)}.compact
    end
  end

  def self.load_class_levels_index(name)
    find_by('lower(name) = ?', make_readable(name.downcase))
  end

  def self.load_class_levels(name, level)
    class_name = find_by('lower(name) = ?', make_readable(name.downcase))
    unless class_name.nil?
      class_name.levels.where(number: level)
    end
  end

  def self.show_subclass_entry(name, subclass, level)
    if number?(level)
      subclass = name if level.to_i < 3
      Level.find_by('lower(subclass) = ? AND number = ?',
                    make_readable(subclass.downcase), level)
    end
  end

  def valid_subclass?(subclass)
    levels.collect { |cls| cls.subclass.downcase }.include?(ClassName.make_readable(subclass))
  end
end
