class API::V1::Classes::WizardsController < ApplicationController
  respond_to :json

  def index
    respond_with(Classes::Wizard.all)
  end

  def show
    wizard = Classes::Wizard.load_resource(params[:subclass], params[:level])

    if wizard.nil? && params[:level].nil?
      resource_not_found('classes', "wizard/#{params[:subclass]}")
    elsif wizard.nil?
      resource_not_found('classes', "wizard/#{params[:subclass]}/#{params[:level]}")
    else
      respond_with(wizard)
    end
  end
end
