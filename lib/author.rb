require'pry'
class Author 
  attr_accessor :name
  
  def initialize(name)
    @name = name 
  end 
  
  def posts
    Post.all.select {|titles| titles.author == self}
    #binding.pry
  end 
  
  def add_post(name)
    name.author = self
  end 
  
  def add_song_by_title(name)
   song = Song.new(name)
   add_song(song)
   #binding.pry
  end 
  
  def self.song_count
    self.song.count
    binding.pry 
  end 
  
  
end 