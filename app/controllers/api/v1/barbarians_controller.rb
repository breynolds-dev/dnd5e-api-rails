class Api::V1::BarbariansController < ApplicationController
  respond_to :json

  def index
    respond_with(Barbarian.all)
  end

  def show
    respond_with(Barbarian.load_resource(params[:subclass], params[:level]))
  end
end
