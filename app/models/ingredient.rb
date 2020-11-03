

class Ingredient

    attr_reader :name, :calories, :dessert, :bakery
    @@all = []

    def initialize(name, calories)
       @name = name
       @calories = calories
       @dessert = dessert
       @bakery = bakery
       @@all << self
    end

    def self.all
        @@all
    end

    def dessert
        @dessert
    end

    def self.find_all_by_name(ingredient_string)
        self.all.select do |ingredient|
            ingredient.name.include?(ingredient_string)
        end
    end

    def bakeries
        Bakery.all.select{|bakery| bakery.ingredients == self}
    end

    def self.find_all_by_name(ingredient)
        Ingredient.all.include? (ingredient)
      end

end