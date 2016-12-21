class API::V1::Classes::SorcerersController < ApplicationController
  respond_to :json

  def index
    respond_withClasses::Sorcerer.all)
  end

  def show
    sorcerer = Classes::Sorcerer.load_resource(params[:subclass], params[:level])

    if sorcerer.nil? && params[:level].nil?
      resource_not_found('classes', "sorcerer/#{params[:subclass]}")
    elsif sorcerer.nil?
      resource_not_found('classes', "sorcerer/#{params[:subclass]}/#{params[:level]}")
    else
      respond_with(sorcerer)
    end
  end
end
