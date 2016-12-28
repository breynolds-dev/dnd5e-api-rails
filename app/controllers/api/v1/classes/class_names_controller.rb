class API::V1::Classes::ClassNamesController < ApplicationController
  respond_to :json

  def index
    classes = ClassName.all

    if classes.empty?
      resource_not_found('classes', '')
    else
      render json: classes,
             serializer: Indexes::ClassIndexSerializer
    end
  end

  def show
    class_name = ClassName.load_class_index(params[:class])

    if class_name.nil?
      resource_not_found('classes', params[:class])
    else
      render json: class_name,
             serializer: ClassNameSerializer
    end
  end
end
