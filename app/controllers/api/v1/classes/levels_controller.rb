class API::V1::Classes::LevelsController < ApplicationController
  respond_to :json

  def index
    class_name = ClassName.find_class(params[:class])

    if class_name.nil?
      resource_not_found('classes', "#{params[:class]}/levels")
    else
      render json: class_name,
             serializer: Indexes::LevelIndexSerializer
    end
  end

  def show
    level = Level.find_level(params[:class], params[:subclass], params[:level])

    if level.nil?
      resource_not_found('classes', "#{params[:class]}/#{params[:subclass]}/#{params[:level]}")
    else
      render json: level,
             serializer: LevelSerializer
    end
  end

  def show_levels
    levels = Level.find_levels(params[:class], params[:level])

    if levels.nil? || levels.empty?
      resource_not_found('classes', "#{params[:class]}/levels/#{params[:level]}")
    else
      render json: levels,
             serializer: ClassLevelsSerializer
    end
  end
end
