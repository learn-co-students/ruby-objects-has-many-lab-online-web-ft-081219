class Song
  attr_reader :name, :artist
  @@all=[]
  
  def initialize(name)
    @@all.push(self)
    @name=name
  end
  
  def self.all
    @@all
  end
  
  def artist=(artist)
    @artist=artist
    artist.songs.push(self)
  end
  
  def artist_name
    if self.artist==nil
      nil
    else
      self.artist.name
    end
  end

end
