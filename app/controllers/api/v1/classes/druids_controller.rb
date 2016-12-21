class API::V1::Classes::DruidsController < ApplicationController
  respond_to :json

  def index
    respond_with(Classes::Druid.all)
  end

  def show
    druid = Classes::Druid.load_resource(params[:subclass], params[:level])

    if druid.nil? && params[:level].nil?
      resource_not_found('classes', "druid/#{params[:subclass]}")
    elsif druid.nil?
      resource_not_found('classes', "druid/#{params[:subclass]}/#{params[:level]}")
    else
      respond_with(druid)
    end
  end
end
