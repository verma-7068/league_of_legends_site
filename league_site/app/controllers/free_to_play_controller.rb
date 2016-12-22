require 'url_api'
class FreeToPlayController < ApplicationController
  def index
    url=UrlApi.new()
    @free_champs=url.free_champs
  end
end
