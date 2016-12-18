class API::V1::Classes::FightersController < ApplicationController
  respond_to :json

  def index
    respond_with (Classes::Fighter.all)
  end

  def show
    respond_with (Classes::Fighter.load_resource(params[:subclass], params[:level]))
  end
end
