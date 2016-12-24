class API::V1::ClassNamesController < ApplicationController
  respond_to :json

  def index
    render json: ClassName.all,
           each_serializer: Indexes::ClassIndexSerializer
  end

  def class_index
    render json: ClassName.load_class_index(params[:class]),
           each_serializer: Indexes::ClassNameIndexSerializer
  end

  def class_levels_index
    render json: ClassName.load_class_levels_index(params[:class]),
           serializer: Indexes::ClassLevelIndexSerializer
  end

  def class_subclass_index
    render json: ClassName.load_subclass_index(params[:class]),
           each_serializer: Indexes::ClassSubclassIndexSerializer
  end

  def class_subclass_levels_index
    if number?(params[:subclass])
      level = Level.find_level(params[:class], params[:subclass])

      if level.nil? || params[:subclass].to_i > 2
        resource_not_found('classes', "#{params[:class]}/#{params[:subclass]}")
      else
        render json: level, serializer: ClassDetailSerializer
      end
    else
      render json: ClassName.load_subclass_levels_index(params[:class], params[:subclass]),
             each_serializer: Indexes::ClassSubclassLevelIndexSerializer
    end
  end

  def class_levels_show
    render json: ClassName.load_class_levels(params[:class], params[:level]),
           each_serializer: ClassLevelsSerializer
  end

  def show
    subclass = ClassName.subclasses(params[:class])

    if subclass.nil?
      resource_not_found('classes', "#{params[:class]}/#{params[:subclass]}")
    else
      respond_with(subclass)
    end
  end
end
