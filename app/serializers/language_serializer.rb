class LanguageSerializer < RouteSerializer
  attributes :id, :name, :script, :self

  def self
    "/v1/languages/#{make_params(object.name)}"
  end
end
