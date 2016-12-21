class API::V1::Classes::FightersController < ApplicationController
  respond_to :json

  def index
    respond_with(Classes::Fighter.all)
  end

  def show
    fighter = Classes::Fighter.load_resource(params[:subclass], params[:level])

    if fighter.nil? && params[:level].nil?
      resource_not_found('classes', "fighter/#{params[:subclass]}")
    elsif fighter.nil?
      resource_not_found('classes', "fighter/#{params[:subclass]}/#{params[:level]}")
    else
      respond_with(fighter)
    end
  end
end
