module Taggable

    TAGS = []

    def add_tags_to_post(*tag)
        tag.each{ |x| TAGS << x.capitalize }
    end

    def show_tags()
        puts TAGS.join(', ')
    end
	
	def add_tag(tag)
		tag.capitalize
		TAGS.include?(tag) ? (puts "This tag already exists. Please try another.") : TAGS << tag
	end

    def remove_tag(tag)
		tag.capitalize
        TAGS.include?(tag) ? TAGS.delete(tag) : (puts "This tag does not exist. Please try another.")
    end
end

class Post

    include Taggable

    attr_accessor :title, :body

    def initialize title, body
        @title = title
        @body = body
    end

end

def generate_post(title, body)
    Post.new(title, body)
end
