class API::V1::LanguagesController < ApplicationController
  respond_to :json

  def index
    respond_with(Language.all)
  end

  def show
    language = Language.load_language(params[:language])

    if language.nil?
      not_found
    else
      respond_with(language)
    end
  end
end
