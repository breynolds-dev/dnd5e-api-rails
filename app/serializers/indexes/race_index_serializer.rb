class Indexes::RaceIndexSerializer < RouteSerializer
  attributes :name, :url

  def name
    object.subrace ? object.subrace : object.name
  end

  def url
    if object.subrace
      "/v1/races/#{make_params(object.name)}/#{make_params(object.subrace)}"
    else
      "/v1/races/#{make_params(object.name)}"
    end
  end
end
