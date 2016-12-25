# Classes Model
class ClassName < ApplicationRecord
  has_many :levels

  def self.load_class_index(name)
    find_by('lower(name) = ?', make_readable(name.downcase))
  end

  def self.load_subclass_index(name)
    class_name = ClassName.find_by('lower(name) = ?', make_readable(name.downcase))
    levels = class_name.levels
    levels.collect(&:subclass).uniq.drop(1)
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
    find_by('lower(name) = ?', make_readable(name.downcase)).levels.where(number: level)
  end

  def self.show_subclass_entry(name, subclass, level)
    Level.find_by('lower(subclass) = ? AND number = ?', make_readable(subclass.downcase), level)
  end

  def valid_subclass?(subclass)
    levels.collect { |cls| cls.subclass.downcase }.include?(ClassName.make_readable(subclass))
  end
end
