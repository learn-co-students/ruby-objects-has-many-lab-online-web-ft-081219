require 'pry'

class Artist
  attr_reader :name, :songs
  @@roster=[]
  # binding.pry
  
  def initialize(name)
    @@roster.push(self)
    @name = name
    @songs=[]
  end
  
  def add_song(song)
    song.artist=self
  end
  
  def add_song_by_name(song_name)
    new_one=Song.new(song_name)
    new_one.artist=self
  end
  
  def self.song_count
    @@roster.collect{|artist|artist.songs.count}.sum
  end
  
end
