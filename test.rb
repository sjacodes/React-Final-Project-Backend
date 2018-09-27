require 'httparty'
require 'json'
require 'pry'


def getResponse
    response = HTTParty.get('https://api.unsplash.com/collections/1110/photos?client_id=6362286e24c0efc976dbfa51c5abe684524bf8c96340be87bb5fd0fd1fc2c0a9&per_page=30')
   new_arr = response.map do |record| 
            {
                artist: record["user"]["name"],
                collection: "Images that capture the diversity of our world.",
                title: record["description"] ? record["description"] : "Untitled",
                date: record["created_at"].slice(0,4),
                image: record["urls"]["regular"]
            }
    end
    binding.pry

end

getResponse
