class API::V1::Classes::SubclassesController < ApplicationController
  respond_to :json

  def index
  end

  def show
    subclass = Subclass.load_resource(params[:class], params[:subclass])

    if subclass.nil?
      resource_not_found('classes', "#{params[:class]}/#{params[:subclass]}")
    else
      render json: subclass,
             each_serializer: Indexes::ClassSubclassLevelIndexSerializer
    end
  end
end
