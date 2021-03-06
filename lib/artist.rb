

class Artist
    attr_accessor :name, :songs 

    @@all = []

    def initialize(name)
        @name = name 
        @songs = []
        save 
    end
    
    def add_song(song)
        song.artist = self 
        @songs << song
    end 

    def save 
        @@all << self
    end 
    
    def self.all
        @@all 
    end 
    

    def songs 
        @songs 
    end 


    def self.find_or_create_by_name(name)
        if @@all.find { |x| x.name == name }
            @@all.find { |x| x.name == name }
        else 
            Artist.new(name)
        end 
    end 

    def print_songs 
       @songs.each { |song| puts song.name } 
    end 
    

end 