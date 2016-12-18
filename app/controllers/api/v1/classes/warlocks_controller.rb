class API::V1::Classes::WarlocksController < ApplicationController
  respond_to :json

  def index
    respond_with (Classes::Warlock.all)
  end

  def show
    respond_with (Classes::Warlock.load_resource(params[:subclass], params[:level]))
  end
end
