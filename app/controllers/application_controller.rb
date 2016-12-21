require 'application_responder'
require 'error_handling'

class ApplicationController < ActionController::API
  include ErrorHandling
  
  self.responder = ApplicationResponder
  respond_to :html
end
