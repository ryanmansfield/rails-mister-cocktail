require 'json'
require 'open-uri'

Ingredient.delete_all

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
user_serialized = open(url).read
ingredients = JSON.parse(user_serialized)

ingredients["drinks"].each do |ingredient|
  Ingredient.create(name: ingredient["strIngredient1"])
end


Cocktail.create!(
  name: 'Dark and Stormy'
)

Cocktail.create!(
  name: 'Mojito'
)

Cocktail.create!(
  name: 'Margarita'
)

Cocktail.create!(
  name: 'Moscow Mule'
)
