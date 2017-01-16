# ==============================================================================
# This allows us to split our massive seed file into multiple smaller files so
# that they can be managed easier.
# ==============================================================================

seed_files = %w(abilities skills traits languages races racial_ability_bonuses
                joins_traits racial_languages class_names subclasses
                class_primary_abilities class_saving_throws class_skills)

seed_files.each do |part|
  require File.expand_path(File.dirname(__FILE__)) + "/seeds/#{part}.rb"
end

# == CLASS FILES ===============================================================

class_files = %w(barbarians bards clerics druids fighters monks paladins rangers
                 rogues sorcerers warlocks wizards)

class_files.each do |part|
  require File.expand_path(File.dirname(__FILE__)) + "/seeds/classes/#{part}.rb"
end

# == END =======================================================================
