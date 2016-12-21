class API::V1::SkillsController < ApplicationController
  respond_to :json

  def index
    respond_with(Skill.all)
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
