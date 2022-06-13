require 'pry'

class Coffee
    attr_reader :name
    attr_accessor :price

    def initialize(name, price = 4.5)
        @price= price
        @name = name
        @ingredients = []
    end

    def add_ingredients(ingredients)

    end
end
c1 = Coffee.new("rose", 3.5)
c2 = Coffee.new("masala", 4.2)
binding.pry