class ErrorsController < ActionController::Base
  respond_to :json

  def not_found
    render json: Error.give_404.to_json, status: 404
  end

  def exception
    render json: Error.give_500.to_json, status: 500
  end
end
