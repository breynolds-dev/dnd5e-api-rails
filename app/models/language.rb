class Language < ApplicationRecord
  has_many :joins_language
  has_many :races, through: :joins_language

  def self.load_language(name)
    if !number?(name)
      find_by('lower(name) = ?', make_readable(name.downcase))
    else
      find(name)
    end
  end
end
