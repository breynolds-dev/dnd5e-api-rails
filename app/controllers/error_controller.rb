require 'application_responder'
require 'error_handling'

class ErrorController < ActionController::Base
  include ErrorHandling
end
