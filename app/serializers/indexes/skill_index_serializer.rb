class Indexes::SkillIndexSerializer < RouteSerializer
  attributes :name, :url

  def url
    "#{root_url}/skills/#{make_params(object.name)}"
  end
end
