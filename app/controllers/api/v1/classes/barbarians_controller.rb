class API::V1::Classes::BarbariansController < ApplicationController
  respond_to :json

  def index
    respond_with(Classes::Barbarian.all)
  end

  def show
    barbarian = Classes::Barbarian.load_resource(params[:subclass], params[:level])

    if barbarian.nil? && params[:level].nil?
      resource_not_found('classes', "barbarian/#{params[:subclass]}")
    elsif barbarian.nil?
      resource_not_found('classes', "barbarian/#{params[:subclass]}/#{params[:level]}")
    else
      respond_with(barbarian)
    end
  end
end
