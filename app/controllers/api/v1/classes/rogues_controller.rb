class API::V1::Classes::RoguesController < ApplicationController
  respond_to :json

  def index
    respond_with (Classes::Rogue.all)
  end

  def show
    respond_with (Classes::Rogue.load_resource(params[:subclass], params[:level]))
  end
end
