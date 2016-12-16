# spec/support/factory_girl.rb
RSpec.configure do |config|
  config.include FactoryGirl::Syntax::Methods

  # FactoryGirl.definition_file_paths = %w(spec/factories/classes/ spec/factories)
  # FactoryGirl.reload
end
