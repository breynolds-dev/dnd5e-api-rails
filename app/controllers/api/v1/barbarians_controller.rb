class Api::V1::BarbariansController < ApplicationController
  before_action :set_api_v1_barbarian, only: [:show]

  respond_to :json

  def index
    respond_with(Barbarian.all)
  end

  def show
    respond_with(@api_v1_barbarian)
  end

  private
  
  def set_api_v1_barbarian
    @api_v1_barbarian = Barbarian.find(params[:id])
  end
end
