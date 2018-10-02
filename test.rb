require 'httparty'
require 'json'
require 'pry'


def getResponse
    sf_moma_painting_and_sculpture = HTTParty.get('https://www.sfmoma.org/api/collection/artworks/department=Painting%20and%20Sculpture&page_size=50', headers: {"Authorization" => "5c6a3bfa479a3f383f4d3ced4c75c0a6c51fbe02"})
    binding.pry

    new_arr = sf_moma_painting_and_sculpture["results"].map do |record| 
        record["images"]
        # if record["images"].length > 0
        #     {
        #         artist: record["artist"].length > 0 ? record["artist"][0]["name_display"] : "Unknown Artist",
        #         collection: "SFMoMA Collection - Painting and Sculpture",
        #         title: record["title"]["display"] ? record["title"]["display"] : "Untitled",
        #         date: record["date"]["display"],
        #         image: record["images"][0]["public_image"]
        #     }
        # end
    end

end

getResponse
