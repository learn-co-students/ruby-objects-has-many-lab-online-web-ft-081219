class Song 
  
  attr_accessor :name, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all
    save
  end 
  
  def save
    @@all << self
  end
  
  def self.all 
    @@all 
  end 
  
  def artist_name
    if self.artist
      artist.name
    else 
      nil 
    end 
    
    #binding.pry 
    
  end
  
end 