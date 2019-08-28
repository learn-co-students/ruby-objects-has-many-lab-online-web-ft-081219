class Artist 
attr_accessor :name
 @@song_counter = 0
  def initialize(name)
    @name = name
  end
 #rick = Artist.new("Rick Astley")
 
  def add_song(song)
    song.artist = self
    @@song_counter += 1
  end
  #rick.add_song(never_gonna_give_you_up)
 
  def songs
    Song.all.select {|song| song.artist == self}
  end
  #rick.soings #=> [#<Song:0x00007fb46b0b97b8 @name="Never Gonna Give You Up", @genre="pop", @artist=#<Artist:0x00007fb46a903000 @name="Rick Astley">>]
 
  def add_song_by_name(name)
    song = Song.new(name)
    add_song(song)
     @@song_counter += 1
    
  end
  
  def self.song_count
    @@song_counter
  end 
  
end
  