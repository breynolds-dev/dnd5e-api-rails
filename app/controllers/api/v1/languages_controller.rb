class API::V1::LanguagesController < ApplicationController
  respond_to :json

  def index
    respond_with(Language.all)
  end

  def show
    respond_with(Language.load_language(params[:language]))
  end
end
