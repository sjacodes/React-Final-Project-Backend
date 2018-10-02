# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'httparty'

french_museums_data = HTTParty.get('https://api.art.rmngp.fr/v1/works/suggested?api_key=2b5f0f78c49d4fc7ca65cf71e55720f40aea49f5c68030fdd5e0de79331014cc&?facets%5Blocations%5D=centre%20national%20d%27art%20et%20de%20culture%20Georges-Pompidou&per_page=50')
french_museums_artworks = french_museums_data["hits"]["hits"].map do |hit|
    { 
         artist: hit["_source"]["authors"].empty? ? "Unknown Artist" : hit["_source"]["authors"][0]["name"]["en"],
         collection: hit["_source"]["location"]["name"].values[0],
         title: hit["_source"]["title"] ? hit["_source"]["title"].values[0] : 'Unknown Title',
         date: hit["_source"]["date"] ? hit["_source"]["date"].values[0] : 'Unknown Date',
         image: hit["_source"]["images"][0]["urls"]["large"]["url"]
    }
end

harvard_museums_data = HTTParty.get('https://api.harvardartmuseums.org/object?apikey=5bccaf40-c23b-11e8-9f63-d310d7ffc861&century=20th%20century&hasimage=1&size=20')
harvard_museums_artworks = harvard_museums_data["records"].map do |record| 
    if record["images"].length > 0
         {
             artist: record["people"].empty? ? "Unknown Artist" : record["people"][0]["name"],
             collection: record["creditline"] ? record["creditline"] : "No known collection",
             title: record["title"] ? record["title"] : "Unknown Title",
             date: record["dated"] ? record["dated"] : "Unknown Date",
             image: record["images"][0]["baseimageurl"]
         }
     end
 end

 unsplash_greyscale = HTTParty.get('https://api.unsplash.com/collections/193/photos?client_id=6362286e24c0efc976dbfa51c5abe684524bf8c96340be87bb5fd0fd1fc2c0a9&per_page=9')
 unsplash_greyscale_artworks = unsplash_greyscale.map do |record| 
          {
              artist: record["user"]["name"],
              collection: "A collection of photos showcasing the beauty of black & white photography – brought to you by the Unsplash team.",
              title: record["description"],
              date: record["created_at"].slice(0,4),
              image: record["urls"]["regular"]
          }
  end

  unsplash_nations = HTTParty.get('https://api.unsplash.com/collections/1110/photos?client_id=6362286e24c0efc976dbfa51c5abe684524bf8c96340be87bb5fd0fd1fc2c0a9&per_page=30')
  unsplash_nations_artworks = unsplash_nations.map do |record| 
           {
               artist: record["user"]["name"],
               collection: "Images that capture the diversity of our world.",
               title: record["description"] ? record["description"] : "Untitled",
               date: record["created_at"].slice(0,4),
               image: record["urls"]["regular"]
           }
   end

   unsplash_nightlights = HTTParty.get('https://api.unsplash.com/collections/291422/photos?client_id=6362286e24c0efc976dbfa51c5abe684524bf8c96340be87bb5fd0fd1fc2c0a9&per_page=30')
   unsplash_nightlights_artworks = unsplash_nightlights.map do |record| 
            {
                artist: record["user"]["name"],
                collection: "Night Lights",
                title: record["description"] ? record["description"] : "Untitled",
                date: record["created_at"].slice(0,4),
                image: record["urls"]["regular"]
            }
    end

    unsplash_animals = HTTParty.get('https://api.unsplash.com/collections/1424240/photos?client_id=6362286e24c0efc976dbfa51c5abe684524bf8c96340be87bb5fd0fd1fc2c0a9&per_page=30')
    
    unsplash_animals_artworks = unsplash_animals.map do |record| 
             {
                 artist: record["user"]["name"],
                 collection: "Unsplash Animals",
                 title: record["description"] ? record["description"] : "Untitled",
                 date: record["created_at"].slice(0,4),
                 image: record["urls"]["regular"]
             }
     end

 french_museums_artworks.each do |artwork|
    Artwork.create(artwork)
 end

 harvard_museums_artworks.each do |artwork|
    Artwork.create(artwork)
 end

 unsplash_greyscale_artworks.each do |artwork|
    Artwork.create(artwork)
 end

 unsplash_nations_artworks.each do |artwork|
    Artwork.create(artwork)
 end

 unsplash_nightlights_artworks.each do |artwork|
    Artwork.create(artwork)
 end

 unsplash_animals_artworks.each do |artwork|
    Artwork.create(artwork)
 end