class HomeController < ApplicationController
  include HTTParty
 
  def index
    @all_anime = AnimeList.new.first_page_json["data"]    
  end

  # GET details of each selected anime in list
  def details_show
    @specific_anime = HTTParty.get("https://kitsu.io/api/edge/anime/#{
    params[:id]
    }").parsed_response["data"]
  end 

  def second_page
    @all_anime2 = AnimeList.new.second_page_json["data"]
  end

  def third_page
    @all_anime3 = AnimeList.new.third_page_json["data"]
  end

  def fourth_page
    @all_anime4 = AnimeList.new.fourth_page_json["data"]
  end

end
