class API::V1::Classes::ClericsController < ApplicationController
  respond_to :json

  def index
    respond_with (Classes::Cleric.all)
  end

  def show
    respond_with (Classes::Cleric.load_resource(params[:subclass], params[:level]))
  end
end
