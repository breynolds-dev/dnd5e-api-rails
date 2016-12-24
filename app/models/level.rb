class Level < ApplicationRecord
  belongs_to :class_name

  def self.find_level(subclass, level)
    find_by('lower(subclass) = ? AND number = ?',
            make_readable(subclass.downcase), level)
  end
end
