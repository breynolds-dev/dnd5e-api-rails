class API::V1::AbilitiesController < ApplicationController
  respond_to :json

  def index
    render json: Ability.all, each_serializer: Indexes::AbilityIndexSerializer
  end

  def show
    ability = Ability.load_ability(params[:ability])

    if ability.nil?
      resource_not_found('abilities', params[:ability])
    else
      respond_with(ability)
    end
  end
end
