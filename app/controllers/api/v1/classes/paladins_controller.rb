class API::V1::Classes::PaladinsController < ApplicationController
  respond_to :json

  def index
    respond_with (Classes::Paladin.all)
  end

  def show
    respond_with (Classes::Paladin.load_resource(params[:subclass], params[:level]))
  end
end
