class Error < ApplicationRecord
  self.abstract_class = true

  def self.give_404
    { status: 404, error: 'resource not found' }
  end

  def self.give_500
    { status: 500, error: 'internal server error' }
  end
end
