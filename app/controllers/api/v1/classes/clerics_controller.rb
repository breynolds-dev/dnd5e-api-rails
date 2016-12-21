class API::V1::Classes::ClericsController < ApplicationController
  respond_to :json

  def index
    respond_with(Classes::Cleric.all)
  end

  def show
    cleric = Classes::Cleric.load_resource(params[:subclass], params[:level])

    if cleric.nil? && params[:level].nil?
      resource_not_found('classes', "cleric/#{params[:subclass]}")
    elsif cleric.nil?
      resource_not_found('classes', "cleric/#{params[:subclass]}/#{params[:level]}")
    else
      respond_with(cleric)
    end
  end
end
