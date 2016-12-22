class TraitSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :range, :links

  def name
    object.race_name
  end

  def links
    {
      self: "#{root_url}/traits/#{make_params(object.race_name)}"
    }
  end
end
