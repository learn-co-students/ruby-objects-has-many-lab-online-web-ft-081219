class Author
  attr_accessor :name, :post

  @@all = []
  @@post_count = 0

   def initialize(name)
    @name = name
    @@all << self
    @posts = []
   end
 
   def add_post(post)
    post.author = self
    @posts << post
    @@post_count += 1
   end

   def add_post_by_title(post)
    post = Post.new(post)
    add_post(post)
    @@post_count += 1
   end

   def posts
    Post.all.select {|post| post.author == self}
   end

   def self.post_count
    @@post_count
   end
end