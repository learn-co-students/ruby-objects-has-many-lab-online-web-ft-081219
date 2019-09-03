class Author

    @@all = []   
    
    attr_accessor :name
    
    
        def initialize(name)
            @name = name
            @posts = []
            @@all << self
             
        end 
    
        def posts
            @posts
        end
    
        def add_post(post)
            post.author = self
        end
    
        def add_post_by_title(name_str)
            new_post = Post.new(name_str)
            new_post.author = self
           end
    
        def self.post_count
            
            total = 0
            @@all.each do |author|
            total += author.posts.length
                
            end
            total
            
        
        end
    
    
    
    end
    
    