class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def self.make_readable(string)
    deslug(string).to_s
  end

  def self.deslug(string)
    string.downcase.tr('-', ' ')
  end

  def self.number?(string)
    true if Float(string) rescue false
  end

  def self.ci_find(attribute, value)
    where("lower(#{attribute}) = ?", make_readable(value.downcase))
  end
end
