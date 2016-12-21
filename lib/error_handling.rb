module ErrorHandling
  def not_found
    render json: { status: 404, error: 'resource not found' }, status: 404
  end

  def exception
    render json: { status: 500, error: 'internal server error' }, status: 500
  end

  def resource_not_found(path, params)
    render json: {
      status: 404,
      error: 'resource not found',
      path: "/v1/#{path}/#{params}"
    }, status: 404
  end
end
