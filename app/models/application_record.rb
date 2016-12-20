class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def self.make_readable(string)
    deslug(string).to_s unless string.nil?
  end

  def self.deslug(string)
    string.downcase.tr('-', ' ')
  end

  def self.number?(string)
    true if Float(string) rescue false
  end
end
