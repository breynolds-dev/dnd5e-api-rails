class API::V1::Classes::MonksController < ApplicationController
  respond_to :json

  def index
    respond_with(Classes::Monk.all)
  end

  def show
    monk = Classes::Monk.load_resource(params[:subclass], params[:level])

    if monk.nil? && params[:level].nil?
      resource_not_found('classes', "monk/#{params[:subclass]}")
    elsif monk.nil?
      resource_not_found('classes', "monk/#{params[:subclass]}/#{params[:level]}")
    else
      respond_with(monk)
    end
  end
end
