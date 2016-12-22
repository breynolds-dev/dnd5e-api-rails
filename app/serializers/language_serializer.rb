class LanguageSerializer < RouteSerializer
  attributes :id, :name, :script, :links

  def links
    {
      self: "#{root_url}/languages/#{make_params(object.name)}"
    }
  end
end
