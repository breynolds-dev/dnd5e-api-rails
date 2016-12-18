class Classes < ApplicationRecord
  self.abstract_class = true

  def self.load_resource(subclass_name, subclass_data, level)
    search_params = {}
    search_params[subclass_name] = subclass_data
    search_params['level'] = level

    if subclass_data && level
      if level.to_i > 2
        self.find_by(search_params)
      else
        self.find_by(search_params)
      end
    elsif !number?(subclass_data) && level.nil?
      self.where(search_params)
    else
      self.find(subclass_data)
    end
  end

  def self.number?(string)
    true if Float(string) rescue false
  end
end
