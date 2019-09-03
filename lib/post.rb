class Post

    @@all = [] 
    attr_accessor :title, :author

    def initialize(title)
        @title = title
        @@all << self

    end

    def author=(author)
        
        @author = author
        author.posts << self
        

    end

    def self.all
        @@all
    end

    def author_name
        if @author
           return @author.name
        else
            return nil
        end
    end


end