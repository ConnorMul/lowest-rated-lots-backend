class YelpController < ApplicationController

    def search
        response = HTTParty.get("https://api.yelp.com/v3/businesses/search?term=parking-lots&location=#{params[:location]}&limit=50", 
            headers: {
                "Authorization": "Bearer mi5qSSqdhmrNXBjLq5MBMwuqcS0q8aE4u52fwqrG8CkrBjjksgdV8ZblHdh4ThtDqQVFapfOwrCqadcTH4sJIMhQgEcWpc0bK_9ms_rJ1H-xMT1Amp4tmH_PhAg3X3Yx"
            }
        ).body

        render json: response
    end
end