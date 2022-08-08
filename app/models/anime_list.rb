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

end

# p AnimeList.new.all_anime_json["data"]
