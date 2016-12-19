class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def self.make_readable(string)
    deslug(string).to_s
  end

  def self.deslug(string)
    string.downcase.tr('-', ' ')
  end
end
