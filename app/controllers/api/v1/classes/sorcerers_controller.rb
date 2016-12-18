class API::V1::Classes::SorcerersController < ApplicationController
  respond_to :json

  def index
    respond_with (Classes::Sorcerer.all)
  end

  def show
    respond_with (Classes::Sorcerer.load_resource(params[:subclass], params[:level]))
  end
end
