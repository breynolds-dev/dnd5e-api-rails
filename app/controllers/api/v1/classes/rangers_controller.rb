class API::V1::Classes::RangersController < ApplicationController
  respond_to :json

  def index
    respond_with (Classes::Ranger.all)
  end

  def show
    respond_with (Classes::Ranger.load_resource(params[:subclass], params[:level]))
  end
end
