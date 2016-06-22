# Week1 Day2 Exercise <Iron Blog>

require "colorize"
require "date"
require "pry"

#----------+----------+----------+----------+----------+

class Blog
  attr_reader :posts
    def initialize
      @posts = []
      @current_page = 1
      @page_size = 3
    end

    def add_post(post)
      @posts << post
    end

    # def totalpages
    #   @posts.length / @pagesize + 1 #need to add 1 for the remainders
    # end

    def publish_front_page
      # top_post = (@current_page) * @page_size
      # bottom_post = (top_post + @page_size)
      # front_page = bottom_post - top_post
      sorted_pages = @posts.sort {|a, b| b.date <=> a.date}#.take(front_page)
      # sorted_pages.each {|post|post.print_post}
  # sliced_posts.each {|post| post.print_post}

      sliced_posts = sorted_pages.each_slice(3).to_a


      sliced_posts[2].each {|post| puts  post.print_post}

    end

    # def publish_nex_page
    #   nex_page = (@current_page) *
    # end

    # def publish_pre_page
    #   pre_page =




end

#----------+----------+----------+----------+----------+

class Post
  attr_reader :date
    def initialize(title, date, text)
      @title = title
      @date = date
      @text = text
    end

    def print_post
      puts "\n>#{@title} [#{@date}]"
      puts "#{"-" * 20}\n#{@text}"
      puts "\n#{"-" * 35}\n"
    end
end

#----------+----------+----------+----------+----------+

class SponsoredPost < Post
    def print_post
      puts "\n*****#{@title}*****"
      puts "#{@text}"
      puts "\n#{"-" * 35}\n"
    end
end

#----------+----------+----------+----------+----------+

blog = Blog.new
blog.add_post Post.new "Ironhack", Date.new(2016, 06, 13), "First day of Ironhack was really cool!! by Soy"
blog.add_post Post.new "Coding", Date.new(2016, 06, 15), "Need more coffee!!!!! by Soy"
blog.add_post Post.new "Barcelona", Date.new(2016, 06, 14), "Great sunny day today :) by Soy"
blog.add_post Post.new "Brithday", Date.new(2016, 05, 13), "It's my brother's birthday today!!!"
blog.add_post Post.new "Coding", Date.new(2016, 05, 19), "Got my Scuba Diving Licence!!! by Soy"
blog.add_post Post.new "Barcelona", Date.new(2016, 06, 10), "Met my cohort at the beach:) :) by Soy"
blog.add_post SponsoredPost.new "Oakley", Date.new(2016, 06, 12), "Buy one Get one free!?!? "
blog.add_post SponsoredPost.new "NIVEA", Date.new(2016, 06, 14), "Sunscreen for SALE!!!"
#parenthesis unnecessary


blog.publish_front_page

today = Date.new(2016, 06, 14)
puts today


# blog.add_post
