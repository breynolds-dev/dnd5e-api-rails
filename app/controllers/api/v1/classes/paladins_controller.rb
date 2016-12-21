class API::V1::Classes::PaladinsController < ApplicationController
  respond_to :json

  def index
    respond_with(Classes::Paladin.all)
  end

  def show
    paladin = Classes::Paladin.load_resource(params[:subclass], params[:level])

    if paladin.nil? && params[:level].nil?
      resource_not_found('classes', "paladin/#{params[:subclass]}")
    elsif paladin.nil?
      resource_not_found('classes', "paladin/#{params[:subclass]}/#{params[:level]}")
    else
      respond_with(paladin)
    end
  end
end
