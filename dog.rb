class Dog
    attr_accessor :name, :owner
    
    def initialize(name)
        @name = name
    end

    def bark 
        "woof!"
    end

    def get_adopted(owner_name)
        #self.bark =>calling the Dog#bark method for the dog to bark when adopted
        bark #with an implicit receiver for self
        self.owner = owner_name 
    end
end

fido = Dog.new("Fido") #creating a new instance of a dog
fido
