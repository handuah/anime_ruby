class HomeController < ApplicationController
  def index
    @all_anime = AnimeList.new.first_page_json["data"]
    
  end

  def second_page
    @all_anime2 = AnimeList.new.second_page_json["data"]
  end
end
