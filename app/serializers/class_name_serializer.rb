class ClassNameSerializer < RouteSerializer
  attributes :id, :name, :description, :creating_a, :quick_build, :url,
             :hit_die, :primary_abilities, :saving_throws, :subclasses,
             :armor_proficiencies, :weapon_proficiencies, :tools

  def description
    object.desc.split('/n/r')
  end

  def hit_die
    "d#{object.hit_die}"
  end

  def primary_abilities
    object.primary_abilities.collect do |ability|
      {
        name: ability.name,
        url: "#{root_url}/abilities/#{make_params(ability.name)}"
      }
    end
  end

  def saving_throws
    object.saving_throws.collect do |ability|
      {
        name: ability.name,
        url: "#{root_url}/abilities/#{make_params(ability.name)}"
      }
    end
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

  def armor_proficiencies
    object.armor_proficiencies.split(',')
  end

  def weapon_proficiencies
    object.weapon_proficiencies.split(',')
  end

  def tools
    object.tools.split(',')
  end
end
