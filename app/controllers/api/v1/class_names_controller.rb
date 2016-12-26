class API::V1::ClassNamesController < ApplicationController
  respond_to :json

  def index
    render json: ClassName.all,
           each_serializer: Indexes::ClassIndexSerializer
  end

  def class_index
    render json: ClassName.load_class_index(params[:class]),
           serializer: ClassNameSerializer
  end

  def class_levels_index
    render json: ClassName.load_class_levels_index(params[:class]),
           serializer: Indexes::ClassLevelIndexSerializer
  end

  def class_subclass_index
    subclass = ClassName.load_subclass_index(params[:class])

    if subclass.nil?
      resource_not_found('classes', "#{params[:class]}/subclasses")
    else
      render json: subclass, each_serializer: Indexes::ClassSubclassIndexSerializer
    end
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
      subclass = ClassName.load_subclass_levels_index(params[:class], params[:subclass])

      if subclass.nil?
        resource_not_found('classes', "#{params[:class]}/#{params[:subclass]}")
      else
        render json: subclass, each_serializer: Indexes::ClassSubclassLevelIndexSerializer
      end
    end
  end

  def class_levels_show
    levels = ClassName.load_class_levels(params[:class], params[:level])

    if levels.empty?
      resource_not_found('classes', "#{params[:class]}/levels/#{params[:level]}")
    else
      render json: levels, each_serializer: ClassLevelsSerializer
    end
  end

  def show
    subclass = ClassName.show_subclass_entry(params[:class], params[:subclass], params[:level])

    if subclass.nil?
      resource_not_found('classes', "#{params[:class]}/#{params[:subclass]}/#{param[:level]}")
    else
      render json: subclass, serializer: ClassDetailSerializer
    end
  end
end
