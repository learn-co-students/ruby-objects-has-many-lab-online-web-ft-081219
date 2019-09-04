class Song
  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize(song_name)
    @name = song_name
    Song.all << self
  end
  
  def self.all
    @@all
  end
  
  def artist_name
    if artist 
      artist.name
    else 
      return nil 
    end
  end
end