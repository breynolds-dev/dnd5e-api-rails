class API::V1::Classes::BardsController < ApplicationController
  respond_to :json

  def index
    respond_with(Classes::Bard.all)
  end

  def show
    bard = Classes::Bard.load_resource(params[:subclass], params[:level])

    if bard.nil? && params[:level].nil?
      resource_not_found('classes', "bard/#{params[:subclass]}")
    elsif bard.nil?
      resource_not_found('classes', "bard/#{params[:subclass]}/#{params[:level]}")
    else
      respond_with(bard)
    end
  end
end
