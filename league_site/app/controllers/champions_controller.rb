require 'url_api'
class ChampionsController < ApplicationController
  def index
    api=UrlApi.new()
    @champions=api.all_champs
  end
  def show
    api=UrlApi.new()
    @champion=api.find_champ(params[:id])
  end
end
