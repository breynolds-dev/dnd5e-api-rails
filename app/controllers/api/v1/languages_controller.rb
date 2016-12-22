class API::V1::LanguagesController < ApplicationController
  respond_to :json

  def index
    render json: Language.all, each_serializer: LanguageIndexSerializer
  end

  def show
    language = Language.load_language(params[:language])

    if language.nil?
      resource_not_found('languages', params[:language])
    else
      respond_with(language)
    end
  end
end
