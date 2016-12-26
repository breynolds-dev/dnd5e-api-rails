class ClassNameSerializer < RouteSerializer
  attributes :id, :name, :description, :creating_a, :quick_build,
             :hit_die, :primary_abilities, :saving_throws, :subclasses,
             :armor_proficiencies, :weapon_proficiencies, :tools, :links

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

  def links
    {
      self: "#{root_url}/classes/#{make_params(object.name)}",
      subclasses: subclass_links,
      abilities: abilities_links
    }
  end

  def subclass_links
    subclasses_list = {}
    subclasses_list.store(make_params(object.name), "#{root_url}/classes/#{make_params(object.name)}/subclasses")
    object.levels.collect(&:subclass).uniq.drop(1).map do |subclass|
      subclasses_list.store(make_params(subclass), "#{root_url}/classes/#{make_params(object.name)}/#{make_params(subclass)}")
    end
    subclasses_list
  end

  def abilities_links
    abilities_list = []
    abilities_links = {}
    object.primary_abilities.each {|a| abilities_list << a.name}
    object.saving_throws.each {|a| abilities_list << a.name}
    abilities_list.uniq.each do |ability|
      abilities_links.store(make_params(ability), "#{root_url}/abilities/#{make_params(ability)}")
    end
    abilities_links
  end
end
