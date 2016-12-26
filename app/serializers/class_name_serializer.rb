class ClassNameSerializer < RouteSerializer
  attributes :id, :name, :description, :creating_a, :quick_build,
             :url, :subclasses, :armor_proficiencies, :weapon_proficiencies,
             :tools

  def description
    object.desc.split('/n/r')
  end

  def url
    "#{root_url}/classes/#{make_params(object.name)}"
  end

  def subclasses
    object.levels.collect(&:subclass).uniq.drop(1).map do |subclass|
      {
        name: subclass,
        url: "#{root_url}/classes/#{make_params(object.name)}/#{make_params(subclass)}"
      }
    end
  end
end
