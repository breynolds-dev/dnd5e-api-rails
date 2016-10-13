class RaceSerializer < ActiveModel::Serializer
  attributes :race_name, :description, :stats, :age_description, :age_min,
             :age_max, :size_description, :size, :min_height, :max_height,
             :min_weight, :max_weight, :speed, :misc
end
