#assuming we're working with Twittr API for our app:
class User
  attr_accessor :name, :age, :location, :user_name

  def initialize(user_name:, name:, age:, location:)
    @user_name = user_name
    @name = name
    @location = location
    @age = age
  end
end
#the twitter API may return the below hash:
twitter_user = { 
  name: "Sophie", 
  user_name: "sm_debenedetto", 
  age: 26, 
  location: "NY, NY"
}
#we now use the hash to instantiate a new instance of our own User class:
sophie = User.new(twitter_user)

#Twitter may change its data for API:
new_twitter_user = {
  name: "Sophie", 
  user_name: "sm_debenedetto", 
  location: "NY, NY"
}
#creating new Users using the old User class will throw an error:
User.new(new_twitter_user)
# => ArgumentError: missing keyword: age

#another hash case
newest_twitter_user = {
  name: "Sophie", 
  user_name: "sm_debenedetto", 
  age: 26, 
  location: "NY, NY", 
  bio: "I'm a programmer living in NY!"
}
#it throws an error too:
User.new(newest_twitter_user)
# => ArgumentError: unknown keyword: bio

#at this point, mass assignment comes in, as an abstract way 
#code refactored with mass assign:
class User
  attr_accessor :name, :user_name, :age, :location, :bio

  def initialize(attributes) #unspecified attributes
    attributes.each do |key, value| #iterating over each key-value pair
      self.send("#{key}=", value) #the ruby #send method then calls the method name that is the key’s name, with an argument of the value.
    end
  end
end
#with setters and getters:
class User
  def initialize(attributes)
    attributes.each do |key, value|
      # create a getter and setter by calling the attr_accessor method
      self.class.attr_accessor(key)
      self.send("#{key}=", value)
    end
  end
end
#By making this one small change, we can now get and set every attribute on an object instantiated from User