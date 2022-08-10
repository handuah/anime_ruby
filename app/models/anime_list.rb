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

    def get_specific_details_json
        get_specific_details.parsed_response
    end

end