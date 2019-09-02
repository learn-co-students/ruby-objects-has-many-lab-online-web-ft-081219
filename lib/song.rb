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
    if self.artist.empty?
      nil
    else 
      self.artist.name
    end 
    
    
    binding.pry 
    
  end
  
end 