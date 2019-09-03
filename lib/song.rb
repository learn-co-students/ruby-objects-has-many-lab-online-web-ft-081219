class Song

    @@all = [] 
    attr_accessor :name, :artist

    def initialize(name)
        @name = name
        @@all << self

    end

    def artist=(name)
        name.songs << self
        @artist = name


    end

    def self.all
        @@all
    end

    def artist_name
        if @artist
            return artist.name
        else
            return nil
        end
    end




end
