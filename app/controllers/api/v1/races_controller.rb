class API::V1::RacesController < ApplicationController
  respond_to :json
    
  def index
    respond_with Races.all, each_serializer: RaceSerializer
  end
end