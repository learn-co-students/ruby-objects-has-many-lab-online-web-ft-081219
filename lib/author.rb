class Author 
  attr_accessor :name
  @@post_counter = 0
  def initialize(name)
    @name = name 
  end
  
  def add_post(title)
    title.author = self 
    @@post_counter += 1
  end
  def posts 
    Post.all.select { |post_| post_.author == self}
  end 
  def add_post_by_title(title)
    title = Post.new(title)
    add_post(title)
     @@post_counter += 1
  end
  def self.post_count 
    @@post_counter
  end
  
   
end