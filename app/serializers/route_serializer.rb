class RouteSerializer < ActiveModel::Serializer
  def make_subclass_level_link(subclass, level)
    if level < 3
      "#{root_url}/classes/#{make_params(subclass.class_name.name)}/#{level}"
    else
      "#{root_url}/classes/#{make_params(subclass.class_name.name)}/#{make_params(subclass.name)}/#{level}"
    end
  end

  def make_subclass_link(subclass)
    "#{root_url}/classes/#{make_params(subclass.class_name.name)}/#{make_params(subclass.name)}"
  end

  def make_class_link(class_name)
    "#{root_url}/classes/#{make_params(class_name.name)}"
  end

  def class_index_link
    "#{root_url}/classes/"
  end

  def class_link(name)
    "#{root_url}/classes/#{make_params(name)}"
  end

  def class_detail_link(name, subclass, level)
    if level < 3
      "#{root_url}/classes/#{make_params(name)}/#{level}"
    else
      "#{root_url}/classes/#{make_params(name)}/#{make_params(subclass)}/#{level}"
    end
  end

  def subclass_link(name, subclass)
    "#{root_url}/classes/#{make_params(name)}/#{make_params(subclass)}"
  end

  def subclass_page_link(name)
    "#{root_url}/classes/#{make_params(name)}/subclasses"
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
