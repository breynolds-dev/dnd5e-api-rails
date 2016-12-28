class API::V1::Classes::ClassNamesController < ApplicationController
  respond_to :json

  def index
    classes = ClassName.all

    if classes.empty?
      resource_not_found('classes', '')
    else
      render json: classes,
             each_serializer: Indexes::ClassIndexSerializer
    end
  end

  def class_index
    class_name = ClassName.load_class_index(params[:class])

    if class_name.nil?
      resource_not_found('classes', params[:class])
    else
      render json: class_name,
             serializer: ClassNameSerializer
    end
  end

  def class_levels_index
    class_name = ClassName.load_class_levels_index(params[:class])

    if class_name.nil?
      resource_not_found('classes', "#{params[:class]}/levels")
    else
      render json: class_name,
             serializer: Indexes::ClassLevelIndexSerializer
    end
  end

  def class_subclass_index
    subclass = ClassName.load_subclass_index(params[:class])

    if subclass.nil?
      resource_not_found('classes', "#{params[:class]}/subclasses")
    else
      render json: subclass,
             each_serializer: Indexes::ClassSubclassIndexSerializer
    end
  end

  def class_subclass_levels_index
    if number?(params[:subclass])
      level = Level.find_level(params[:class], params[:subclass])

      if level.nil? || params[:subclass].to_i > 2
        resource_not_found('classes', "#{params[:class]}/#{params[:subclass]}")
      else
        render json: level,
               serializer: ClassDetailSerializer
      end
    else
      subclass = ClassName.load_subclass_levels_index(params[:class], params[:subclass])

      if subclass.nil?
        resource_not_found('classes', "#{params[:class]}/#{params[:subclass]}")
      else
        render json: subclass,
               each_serializer: Indexes::ClassSubclassLevelIndexSerializer
      end
    end
  end

  def class_levels_show
    levels = ClassName.load_class_levels(params[:class], params[:level])

    if levels.nil?
      resource_not_found('classes', "#{params[:class]}/levels/#{params[:level]}")
    else
      render json: levels,
             each_serializer: ClassLevelsSerializer
    end
  end

  def show
    subclass = ClassName.show_subclass_entry(params[:class], params[:subclass], params[:level])

    if subclass.nil?
      resource_not_found('classes', "#{params[:class]}/#{params[:subclass]}/#{params[:level]}")
    else
      render json: subclass,
             serializer: ClassDetailSerializer
    end
  end
end
