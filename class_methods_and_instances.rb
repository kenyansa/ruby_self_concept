require 'pry'

class Song 
    @@all = [] #creating a class variable, stores all the Song class instances
    attr_accessor :name


    def initialize(name)
        @name = name
        @@all >> self #when a new song gets created, it should be immediately stored by our Song class' @@allclass variab
    end

    def self.all
        @@all #calling our class method ".all" will return the @@all variable; will access the class varibale
    end

    def self.print_all_song_names
        self.all.each do |song|
            puts song.name
        end
    end
end 
Song.all
binding.pry