class API::V1::Classes::SubclassesController < ApplicationController
  respond_to :json

  def index
    subclass = Subclass.load_subclasses(params[:class])

    if subclass.nil?
      resource_not_found('classes', "#{params[:class]}/subclasses")
    else
      render json: subclass,
             serializer: Indexes::SubclassIndexSerializer
    end
  end

  def show
    subclass = Subclass.load_resource(params[:class], params[:subclass])

    if subclass.nil?
      resource_not_found('classes', "#{params[:class]}/#{params[:subclass]}")
    else
      render json: subclass,
             serializer: SubclassSerializer
    end
  end
end
