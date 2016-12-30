class ClassNameSerializer < RouteSerializer
  attributes :id, :name, :description, :subheading_one, :subheading_two,
             :creating_a, :quick_build, :hit_die, :subclasses,
             :primary_abilities, :saving_throws, :skill_choice,
             :skill_choice_options, :armor_proficiencies, :weapon_proficiencies,
             :tools, :links

  def description
    object.description.split('\n\r')
  end

  def subheading_one
    object.subheading_one.split('\n\r')
  end

  def subheading_two
    object.subheading_two.split('\n\r')
  end

  def creating_a
    object.creating_a.split('\n\r')
  end

  def hit_die
    "d#{object.hit_die}"
  end

  def primary_abilities
    object.primary_abilities.collect do |ability|
      {
        name: ability.name,
        url: ability_link(ability.name)
      }
    end
  end

  def saving_throws
    object.saving_throws.collect do |ability|
      {
        name: ability.name,
        url: ability_link(ability.name)
      }
    end
  end

  def subclasses
    object.subclasses.drop(1).collect do |subclass|
      {
        name: subclass.name,
        url: make_subclass_link(subclass)
      }
    end
  end

  def skill_choice_options
    object.class_skill_options.collect do |skill|
      {
        name: skill.name,
        url: skill_link(skill.name)
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
      abilities: abilities_links,
      skills: skill_links
    }
  end

  def subclass_links
    subclass_list = {}
    object.subclasses.drop(1).collect do |subclass|
      subclass_list.store(make_params(subclass.name),
                          make_subclass_link(subclass))
    end
    subclass_list
  end

  def abilities_links
    abilities_list = []
    links = {}
    object.primary_abilities.each { |a| abilities_list << a.name }
    object.saving_throws.each { |a| abilities_list << a.name }
    abilities_list.uniq.each do |ability|
      links.store(make_params(ability), ability_link(ability))
    end
    links
  end

  def skill_links
    skill_list = {}
    object.class_skill_options.collect(&:name).uniq do |skill|
      skill_list.store(make_params(skill), skill_link(skill))
    end
    skill_list
  end
end
