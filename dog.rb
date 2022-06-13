class Dog
    attr_accessor :name
    
    def initialize(name)
        @name = name
    end

    def bark 
        "woof!"
    end
end

fido = Dog.new("Fido") #creating a new instance of a dog
