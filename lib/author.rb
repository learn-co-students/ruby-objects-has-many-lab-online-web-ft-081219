require'pry'
class Author 
  attr_accessor :name 
  def initialize(name)
    @name = name
    @posts = []
  end 
  
  def posts
    Post.all.select {|post| post.author == self}
    #binding.pry
  end 
  
  def add_post(name)
    name.author = self
  end 
  
  def add_post_by_title(name)
   post = Post.new(name)
   add_post(post)
   #binding.pry
  end 
  
  def self.post_count
    Post.all.count
    #binding.pry 
  end 
  
  
end 