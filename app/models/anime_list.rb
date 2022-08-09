#https://kitsu.io/api/edge/anime

require 'httparty'
#class AnimeList < ApplicationRecord
class AnimeList 
    include HTTParty
    base_uri 'https://kitsu.io/api/edge'

    
    def get_anime
        self.class.get('/anime/?page[limit]=20')
    end

    def all_anime_json
        get_anime.parsed_response
    end

    def get_first_page 
        self.class.get('/anime/?page%5Blimit%5D=10&page%5Boffset%5D=0')
    end

    def first_page_json
        get_first_page.parsed_response
    end

    def get_second_page 
        self.class.get('/anime/?page%5Blimit%5D=10&page%5Boffset%5D=10')
    end

    def second_page_json
        get_second_page.parsed_response
    end

    def get_third_page 
        self.class.get('/anime/?page[limit]=10&page[offset]=20')
    end

    def third_page_json
        get_third_page.parsed_response
    end

    def get_fourth_page 
        self.class.get('/anime/?page[limit]=10&page[offset]=30')
    end

    def fourth_page_json
        get_fourth_page.parsed_response
    end

    # def get_specific_details
    #     @anime_first = AnimeList.new.get_first_page["data"]

    #     for anime in @anime_first
    #         @anime_id = anime["id"]
    #         #self.class.get("/anime/#{@anime_id}") 
    #         #p "https://kitsu.io/api/edge/anime/#{@anime_id}"
    #     end
    #     p self.class.get("/anime/#{@anime_id}") 

    # end

    def get_specific_details_json
        get_specific_details.parsed_response
    end

end

# p AnimeList.new.all_anime_json["data"]

p AnimeList.new.get_specific_details

# AnimeList.new.get_first_page["data"].each do |poke_name|
#     @pokemon_reference_name = poke_name["name"]  
#      p "https://pokeapi.co/api/v2/pokemon/#{@pokemon_reference_name}" 
# end
