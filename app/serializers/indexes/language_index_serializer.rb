class Indexes::LanguageIndexSerializer < RouteSerializer
  attributes :name, :url

  def url
    "#{root_url}/languages/#{make_params(object.name)}"
  end
end
