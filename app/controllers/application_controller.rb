require 'application_responder'
require 'error_handling'

class ApplicationController < ActionController::API
  include ErrorHandling

  self.responder = ApplicationResponder
  respond_to :html

  def number?(string)
    true if Float(string) rescue false
  end
end
