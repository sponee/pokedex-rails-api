json.array! @pokemon do |pokemon|
  json.(pokemon, "id", "name", "type", "base")
 
  english_name = pokemon["name"]["english"].gsub(/\W/, '')
  image_url = if pokemon["id"] >= 100
    "http://localhost:3000/assets/#{pokemon["id"]}#{english_name}.png"
  elsif pokemon["id"] < 10
    "http://localhost:3000/assets/00#{pokemon["id"]}#{english_name}.png"
  elsif pokemon["id"] < 100
    "http://localhost:3000/assets/0#{pokemon["id"]}#{english_name}.png"
  end

  json.image_url image_url
end

# Example
#  [
#    {
#      "id": 1,
#      "species": "Lake Trout",
#      "weight": "3.0",
#      "length": "21.5",
#      "created_at": "2018-09-24 23:07:54 UTC",
#      "bait": "Fat Rap",
#      "bait_image_url": "http://localhost:3000/assets/fat-rap.png",
#      "username": "nicole"
#    },
#    {
#      "id": 2,
#      "species": "Brown Trout",
#      "weight": "2.0",
#      "length": "18.0",
#      "created_at": "2018-10-07 23:06:35 UTC",
#      "bait": "Yummy Gummy",
#      "bait_image_url": "http://localhost:3000/assets/yummy-gummy.png",
#      "username": "mike"
#    }
#  ]