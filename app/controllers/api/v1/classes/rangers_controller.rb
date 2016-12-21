class API::V1::Classes::RangersController < ApplicationController
  respond_to :json

  def index
    respond_with(Classes::Ranger.all)
  end

  def show
    ranger = Classes::Ranger.load_resource(params[:subclass], params[:level])

    if ranger.nil? && params[:level].nil?
      resource_not_found('classes', "ranger/#{params[:subclass]}")
    elsif ranger.nil?
      resource_not_found('classes', "ranger/#{params[:subclass]}/#{params[:level]}")
    else
      respond_with(ranger)
    end
  end
end
