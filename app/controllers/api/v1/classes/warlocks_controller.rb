class API::V1::Classes::WarlocksController < ApplicationController
  respond_to :json

  def index
    respond_with(Classes::Warlock.all)
  end

  def show
    warlock = Classes::Warlock.load_resource(params[:subclass], params[:level])

    if warlock.nil? && params[:level].nil?
      resource_not_found('classes', "warlock/#{params[:subclass]}")
    elsif warlock.nil?
      resource_not_found('classes', "warlock/#{params[:subclass]}/#{params[:level]}")
    else
      respond_with(warlock)
    end
  end
end
