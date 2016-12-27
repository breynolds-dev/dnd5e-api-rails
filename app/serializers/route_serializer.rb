class RouteSerializer < ActiveModel::Serializer
  def make_params(string)
    slug(string).to_s unless string.nil?
  end

  def slug(string)
    string.downcase.tr(' ', '-')
  end

  def root_url
    'http://5e-api.com/v1'
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
end
