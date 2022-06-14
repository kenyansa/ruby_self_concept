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
  def make_drink
    @cocktail_ingredients = []
    choose_liquor
    choose_mixer
    choose_garnish
    "Here is your drink. It contains #{@cocktail_ingredients}"
  end

  private 

  def choose_liquor
    @cocktail_ingredients << "whiskey"
  end

  def choose_mixer
    @cocktail_ingredients << "vermouth"
  end

  def choose_garnish
    @cocktail_ingredients << "olives"
  end
end

phil = Bartender.new("Phil")
nancy = Bartender.new("Nancy")

Bartender.all