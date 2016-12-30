class Subclass < ApplicationRecord
  belongs_to :class_name
  has_many :levels

  def self.load_subclasses(class_name)
    cls = ClassName.find_by('lower(name) = ?', make_readable(class_name))
    cls unless cls.nil?
  end

  def self.load_resource(class_name, subclass)
    subcls = find_by('lower(name) = ?', make_readable(subclass))
    subcls unless subcls.nil? || !check_class_name(subcls, class_name)
  end

  def self.check_class_name(subclass, name)
    make_readable(subclass.class_name.name) == make_readable(name)
  end
end
