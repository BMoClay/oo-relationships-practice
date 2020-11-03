

class Dessert
    
    attr_accessor :name, :calories, :ingredients, :bakery
    
    # attr_reader :name, :calories, :ingredients, :bakery
    @@all = []

    def initialize(name, bakery, ingredients)
        @name = name
        @bakery = bakery
        @ingredients = ingredients
        @@all << self
    end

    def self.all
        @@all
    end
   
    def ingredients
        Ingredient.all.select{|ingredient| ingredient.dessert == self}
    end

    # def bakery
    #     @bakery
    # end

    def calories
        ingredients.inject(0){|sum, ing| sum + ing.calories}
    end
end