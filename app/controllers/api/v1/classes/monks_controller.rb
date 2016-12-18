class API::V1::Classes::MonksController < ApplicationController
  respond_to :json

  def index
    respond_with(Classes::Monk.all)
  end

  def show
    respond_with(Classes::Monk.load_resource(params[:subclass], params[:level]))
  end
end
