class Post 
  attr_accessor :title, :author
  @@all = []
  
  def initialize(title)
    @title = title 
    @@all << title 
  end 
  
  def self.all 
    
  end 
  
  def author_name
    self.author.name 
  end
  
end 