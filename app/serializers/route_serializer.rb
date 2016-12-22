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
end
