class API::V1::Classes::WizardsController < ApplicationController
  respond_to :json

  def index
    respond_with (Classes::Wizard.all)
  end

  def show
    respond_with (Classes::Wizard.load_resource(params[:subclass], params[:level]))
  end
end
