class API::V1::RacesController < ApplicationController
  respond_to :json
  
  def index
    respond_with :api, :v1, Race.all
  end
end