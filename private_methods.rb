class Bartender
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self #Here we're shoveling in every new instance of Bartender into a class variable that holds onto all bartenders
  end

  ef self.all #with the class method self.all, we'll call on the class itself to return all of the bartenders
  @@all
end

  def intro
    "Hello, my name is #{self.name}!"
  end
end

phil = Bartender.new("Phil")
nancy = Bartender.new("Nancy")

Bartender.all