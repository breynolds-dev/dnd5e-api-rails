class API::V1::Classes::RoguesController < ApplicationController
  respond_to :json

  def index
    respond_with(Classes::Rogue.all)
  end

  def show
    rogue = Classes::Rogue.load_resource(params[:subclass], params[:level])

    if rogue.nil? && params[:level].nil?
      resource_not_found('classes', "rogue/#{params[:subclass]}")
    elsif rogue.nil?
      resource_not_found('classes', "rogue/#{params[:subclass]}/#{params[:level]}")
    else
      respond_with(rogue)
    end
  end
end
