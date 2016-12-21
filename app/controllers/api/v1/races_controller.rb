class API::V1::RacesController < ApplicationController
  respond_to :json

  def index
    respond_with(Race.all)
  end

  def show
    race = Race.load_race(params[:race], params[:subrace])

    if race.nil? && params[:subrace].nil?
      resource_not_found('races', params[:race])
    elsif race.nil? && params[:subrace]
      resource_not_found('races', "#{params[:race]}/#{params[:subrace]}")
    else
      respond_with(race)
    end
  end
end
