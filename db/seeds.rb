# ==============================================================================
# This allows us to split our massive seed file into multiple smaller files so
# that they can be managed easier.
# ==============================================================================

%w(races).each do |part|
  require File.expand_path(File.dirname(__FILE__)) + "/seeds/#{part}.rb"
end
