class API::V1::RacesController < ApplicationController
  respond_to :json

  def index
    respond_with(Race.all)
  end

  def show
    respond_with(Race.load_race(params[:race]))
  end
end
