class Author
  attr_reader :name
  @@roster=[]
  
  def initialize(name)
    @@roster.push(self)
    @name=name
    @posts=[]
  end
  
  def posts
    @posts
  end
  
  def add_post(post_arg)
    post_arg.author=self
  end
  
  def add_post_by_title(title)
    Post.new(title).author=self
  end
  
  def self.post_count
    @@roster.collect {|author|author.posts.count}.sum
  end
  
end
