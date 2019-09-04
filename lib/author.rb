class Author 
  attr_accessor :name
  def initialize(name)
    @name = name 
  end
  def posts 
    Post.all 
  end
  
  def add_post(post_name)
    post_name.author = self
  end
  
  def add_post_by_title(title)
    new_post = Post.new(title)
    add_post(new_post)
  end
  
  def self.post_count
    Post.all.length 
  end
end