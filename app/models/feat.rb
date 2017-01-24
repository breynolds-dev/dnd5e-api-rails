class Feat < ApplicationRecord
  def self.load_feat(feat)
    find_by('lower(name) = ?', make_readable(feat))
  end
end
