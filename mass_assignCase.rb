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