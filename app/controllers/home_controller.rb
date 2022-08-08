class HomeController < ApplicationController
  def index
    @all_anime = AnimeList.new.first_page_json["data"]
  end
end
