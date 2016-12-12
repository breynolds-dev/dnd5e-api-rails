class API::V1::RacesController < ApplicationController
  before_action :set_api_v1_race, only: [:show]

  respond_to :json

  def index
    respond_with(Race.all)
  end

  def show
    respond_with(Race.find(params[:id]))
  end
end
