# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

JSON.parse(File.open('config/pokedex.json').read).each do |pokemon|
  Pokemon.create(
    pokedex_number: pokemon["id"],
    english_name: pokemon["name"]["english"],
    japanese_name: pokemon["name"]["japanese"],
    chinese_name: pokemon["name"]["chinese"],
    types: pokemon["type"].join(", ").to_s,
    hp: pokemon["base"]["HP"],
    attack: pokemon["base"]["Attack"],
    defense: pokemon["base"]["Defense"],
    sp_attack: pokemon["base"]["Sp. Attack"],
    sp_defense: pokemon["base"]["Sp. Defense"],
    speed: pokemon["base"]["Speed"]
  )
end
