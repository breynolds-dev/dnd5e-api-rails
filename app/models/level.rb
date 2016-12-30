class Level < ApplicationRecord
  belongs_to :subclass
  has_one :class_name, through: :subclass

  def self.find_levels(name, level)
    cls = ClassName.find_by('lower(name) = ?', make_readable(name.downcase))
    cls.levels.where(number: level) unless cls.nil?
  end

  def self.find_level(name, subclass, level)
    cls = ClassName.find_by('lower(name) = ?', make_readable(name.downcase))
    unless cls.nil?
      subcls = cls.subclasses.find_by('lower(name) = ?',
                                      make_readable(subclass.downcase))

      subcls.levels.find_by(number: level) unless subcls.nil?
    end
  end
end
