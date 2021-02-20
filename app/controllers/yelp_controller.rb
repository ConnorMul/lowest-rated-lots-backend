require_relative '../../.api_key.rb'

class YelpController < ApplicationController

    def search
        response = HTTParty.get("https://api.yelp.com/v3/businesses/search?term=parking-lots&location=#{params[:location]}&limit=50", 
            headers: {
                "Authorization": "Bearer #{$api_key}"
            }
        ).body

        render json: response
    end
end