# ==============================================================================
# This allows us to split our massive seed file into multiple smaller files so
# that they can be managed easier.
# ==============================================================================

seed_files = %w(skills traits languages races joins_traits joins_languages
                barbarians)

seed_files.each do |part|
  require File.expand_path(File.dirname(__FILE__)) + "/seeds/#{part}.rb"
end
