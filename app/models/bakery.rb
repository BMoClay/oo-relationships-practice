

class Bakery

# attr_reader :name, :dessert
attr_accessor :name#, #:dessert, :ingredients
@@all = []

    def initialize(name)
        @name = name
        # @dessert = dessert
        # @ingredients = ingredients
        @@all << self
    end

    def self.all
        @@all
    end

    def ingredients
        self.desserts.map {|dessert| dessert.ingredients} 
    end

    def desserts
        Dessert.all.select{|dessert| dessert.bakery == self}
    end

    def average_calories
        Bakery.desserts.all.inject(0) do |sum, dessert|
            sum + desserts.calories
        end/Bakery.desserts.all.count
    end

    
end