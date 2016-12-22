class Indexes::RaceIndexSerializer < RouteSerializer
  attributes :name, :url

  def name
    object.subrace ? object.subrace : object.name
  end

  def url
    if object.subrace
      "#{root_url}/races/#{make_params(object.name)}/#{make_params(object.subrace)}"
    else
      "#{root_url}/races/#{make_params(object.name)}"
    end
  end
end
