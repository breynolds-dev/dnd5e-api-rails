class API::V1::Classes::BardsController < ApplicationController
  respond_to :json

  def index
    respond_with (Classes::Bard.all)
  end

  def show
    respond_with (Classes::Bard.load_resource(params[:subclass], params[:level]))
  end
end
