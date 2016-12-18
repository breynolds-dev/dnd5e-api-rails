class API::V1::Classes::DruidsController < ApplicationController
  respond_to :json

  def index
    respond_with (Classes::Druid.all)
  end

  def show
    respond_with (Classes::Druid.load_resource(params[:subclass], params[:level]))
  end
end
