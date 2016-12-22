require "url_api"
class UsersController < ApplicationController
  def index

  end
  def show
    url=UrlApi.new
    id=url.get_id(params[:summoner_id])
    if id == -1
      flash[:notice]="invalid"
      render(controller:"users",:action=>"index")
    else
      @top_champs=url.top_champs(id)
    end
  end
end
