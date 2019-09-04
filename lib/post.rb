class Post
  attr_accessor :title, :author
  
  @@all = []
  
  def initialize(post_name)
    @title = post_name
    Post.all << self
  end
  
  def self.all
    @@all
  end
  def author_name
    if author
      author.name 
    else 
      return nil 
    end
  end
end