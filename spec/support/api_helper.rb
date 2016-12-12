# A helper module for testing API calls
module ApiHelper
  include Rack::Test::Methods

  def app
    Rails.application
  end
end
