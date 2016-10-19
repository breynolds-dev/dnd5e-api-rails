class RaceSerializer < ActiveModel::Serializer
  attributes :race_name, :description, :strength, :dexterity, :constitution, 
             :intelligence, :wisdom, :charisma, :age_description, :age_min,
             :age_max, :size_description, :size, :min_height, :max_height,
             :min_weight, :max_weight, :speed, :misc, :languages, :traits
end
