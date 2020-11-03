require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

#Bakery  -< Desserts >-  Ingredients

#Bakery

juniors = Bakery.new('Juniors')
pie_corp = Bakery.new('Pie Corp')
blue_stove = Bakery.new('Blue Stove')
#binding.pry

#Ingredients

blueberries = Ingredient.new('blueberries', 50)
egg = Ingredient.new('egg', 50)
flour = Ingredient.new('flour', 25)
cream_cheese = Ingredient.new('cream_cheese', 100)
apples = Ingredient.new('apples', 5)
sugar = Ingredient.new('sugar', 50)
#
#Dessert
cheesecake = Dessert.new("cheesecake", juniors, [sugar, egg, cream_cheese])
blueberry_pie = Dessert.new("blueberry_pie", pie_corp, [sugar, flour, blueberries]) 
apple_pie = Dessert.new("apple_pie", blue_stove, [sugar, flour, apples])   

puts cheesecake.bakery
# puts cheesecake.ingredients

# puts juniors.ingredients
# puts sugar.dessert
puts cheesecake.ingredients