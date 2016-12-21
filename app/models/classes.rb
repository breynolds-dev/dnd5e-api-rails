# Classes Model
class Classes < ApplicationRecord
  self.abstract_class = true

  def self.load_resource(subclass, level)
    if valid_subclass?(subclass) && level
      match_subclass_level(subclass, level)
    elsif !number?(subclass) && level.nil?
      find_by_subclass(subclass)
    elsif number?(subclass)
      find_by_level(subclass)
    end
  end

  def self.match_subclass_level(subclass, level)
    if level.to_i > 2
      find_by_subclass_level(subclass, level)
    elsif number?(level)
      find_by_level(level).first
    end
  end

  def self.find_by_level(level)
    data = where('level = ?', level)

    data.empty? ? nil : data
  end

  def self.find_by_subclass(subclass)
    data = where('lower(subclass) = ?', make_readable(subclass.downcase))

    data.empty? ? nil : data
  end

  def self.find_by_subclass_level(subclass, level)
    find_by('lower(subclass) = ? AND level = ?',
            make_readable(subclass.downcase), level)
  end

  def self.valid_subclass?(subclass)
    if number?(subclass)
      false
    else
      all.map { |l| l.subclass.downcase }.uniq.include?(make_readable(subclass))
    end
  end
end
