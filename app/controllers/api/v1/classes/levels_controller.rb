class API::V1::Classes::LevelsController < ApplicationController
  respond_to :json

  def index
    class_name = ClassName.load_class_levels_index(params[:class])

    if class_name.nil?
      resource_not_found('classes', "#{params[:class]}/levels")
    else
      render json: class_name,
             serializer: Indexes::LevelIndexSerializer
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

  def show_levels
    levels = Level.load_class_levels(params[:class], params[:level])

    if levels.nil?
      resource_not_found('classes', "#{params[:class]}/levels/#{params[:level]}")
    else
      render json: levels,
             serializer: ClassLevelsSerializer
    end
  end
end
