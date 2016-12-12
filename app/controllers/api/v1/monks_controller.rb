class API::V1::MonksController < ApplicationController
  respond_to :json

  def index
    respond_with(Monk.all)
  end

  def show
    respond_with(Monk.load_resource(params[:subclass], params[:level]))
  end
end
