class API::V1::SkillsController < ApplicationController
  respond_to :json

  def index
    render json: Skill.all, each_serializer: Indexes::SkillIndexSerializer
  end

  def show
    skill = Skill.load_skill(params[:skill])

    if skill.nil?
      resource_not_found('skills', params[:skill])
    else
      respond_with(skill)
    end
  end
end
