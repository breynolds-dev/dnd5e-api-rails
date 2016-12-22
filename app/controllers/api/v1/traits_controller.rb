class API::V1::TraitsController < ApplicationController
  respond_to :json

  def index
    render json: Trait.all.order(race_name: :asc),
           each_serializer: Indexes::TraitIndexSerializer
  end

  def show
    trait = Trait.load_trait(params[:trait])

    if trait.nil?
      resource_not_found('traits', params[:trait])
    else
      respond_with(trait)
    end
  end
end
