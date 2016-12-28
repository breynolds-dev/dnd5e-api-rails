class RouteSerializer < ActiveModel::Serializer
  def make_class_index_link
    "#{root_url}/classes"
  end

  def make_class_link(class_name)
    cls = make_params(class_name.name)
    "#{root_url}/classes/#{cls}"
  end

  def make_class_levels_link(class_name)
    cls = make_params(class_name.name)
    "#{root_url}/classes/#{cls}/levels"
  end

  def make_subclass_link(subclass)
    cls = make_params(subclass.class_name.name)
    subcls = make_params(subclass.name)

    "#{root_url}/classes/#{cls}/#{subcls}"
  end

  def make_subclass_index_link(class_name)
    "#{root_url}/classes/#{make_params(class_name.name)}/subclasses"
  end

  def make_subclass_level_link(subclass, level)
    cls = make_params(subclass.class_name.name)
    subcls = make_params(subclass.name)

    if level < 3
      "#{root_url}/classes/#{cls}/#{level}"
    else
      "#{root_url}/classes/#{cls}/#{subcls}/#{level}"
    end
  end

  def ability_link(name)
    "#{root_url}/abilities/#{make_params(name)}"
  end

  def skill_link(name)
    "#{root_url}/skills/#{make_params(name)}"
  end

  private

  def root_url
    # 'http://5e-api.com/v1'
    'http://localhost:3000/v1'
  end

  def make_params(string)
    slug(string).to_s unless string.nil?
  end

  def slug(string)
    string.downcase.tr(' ', '-')
  end
end
