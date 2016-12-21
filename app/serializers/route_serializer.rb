class RouteSerializer < ActiveModel::Serializer
  def make_params(string)
    slug(string).to_s unless string.nil?
  end

  def slug(string)
    string.downcase.tr(' ', '-')
  end
end
