class Api::V1::RoguesController < ApplicationController
  before_action :set_api_v1_race, only: [:show]

  respond_to :json

  def index
    @api_v1_races = Race.all
    respond_with(@api_v1_races)
  end

  def show
    respond_with(@api_v1_race)
  end

  private
  
  def set_api_v1_race
    @api_v1_race = Race.find(params[:id])
  end
end
