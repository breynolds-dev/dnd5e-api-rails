class API::V1::FeatsController < ApplicationController
  respond_to :json

  def index
    render json: Feat.all, each_serializer: Indexes::FeatIndexSerializer
  end

  def show
    feat = Feat.load_feat(params[:feat])

    if feat.nil?
      resource_not_found('feats', params[:feat])
    else
      respond_with(feat)
    end
  end
end
