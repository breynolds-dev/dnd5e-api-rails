require 'application_responder'
require 'error_handling'

class ErrorsController < ActionController::Base
  include ErrorHandling
end
