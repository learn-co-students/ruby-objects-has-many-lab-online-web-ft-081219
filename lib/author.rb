class Author 
  
  attr_accessor :name, :posts 
  
  def initialize(name)
    @name = name 
  end 
  
  def posts
    Post.all.select {|posts| posts.author == self} #Has Many Posts 
  end 
  
  def add_post(posts)
    posts.author = self 
  end 
  
  def add_post_by_title(title)
    posts = Post.new(title)
      add_post(posts)
  end 
  
  def self.post_count
    Post.all.count 
  end 
  
end 