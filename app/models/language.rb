class Language < ApplicationRecord
  has_many :racial_languages
  has_many :races, through: :racial_languages

  def self.load_language(name)
    if !number?(name)
      find_by('lower(name) = ?', make_readable(name.downcase))
    end
  end
end
