class Artist

@@all = []   

attr_accessor :name


    def initialize(name)
        @name = name
        @songs = []
        @@all << self
        
    end 

    def songs
        @songs
    end

    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(name_str)
        new_song = Song.new(name_str)
        new_song.artist = self
        

    end

    def self.song_count
        
        total = 0
        @@all.each do |artist|
            total += artist.songs.length
            
        end
        total
        
    
    end



end

