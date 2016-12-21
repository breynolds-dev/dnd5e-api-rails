class ErrorsController < ActionController::Base
  respond_to :json

  def not_found
    render json: { status: 404, error: 'resource not found' }.to_json, status: 404
  end

  def exception
    render json: { status: 500, error: 'internal server error' }.to_json, status: 500
  end
end
