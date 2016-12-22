class RaceIndexSerializer < RouteSerializer
  attributes :id, :name, :subrace, :path

  def path
    if object.subrace
      "/v1/races/#{make_params(object.name)}/#{make_params(object.subrace)}"
    else
      "/v1/races/#{make_params(object.name)}"
    end
  end
end
