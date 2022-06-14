#initializing people with name and age
class Person
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end
end
#refactored:
class Person
  attr_accessor :name, :age

  def initialize(name:, age:)
    @name = name
    @age = age
  end
end
#mass assignment
person_attributes = { name: "Sophie", age: 26 }
sophie = Person.new(person_attributes) #here, we've created the hash that the method is expecting to accept as an argument, assigned that hash to a variable, and simply passed the variable in to the method as an argument