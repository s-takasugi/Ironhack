# Week1 Day2 Exercise <Iron Blog>

require "colorize"
require "date"
require "pry"

class Blog
  attr_reader :posts
    def initialize
      @posts = []
    end

    def add_post(post)
      @posts.push(post)
    end

    def current_page
      i = 1
      @posts[]
    end

    def publish_front_page
      sorted_posts = @posts.sort {|a, b| b.date <=> a.date}
      sorted_posts.each {|post| post.print_post}
    end
end

class Post
  attr_reader :date
    def initialize(title, date, text)
      @title = title
      @date = date
      @text = text
    end

    def print_post
      puts "\n>#{@title} [#{@date.to_s.colorize(:blue)}]"
      puts "#{"-" * 20}\n#{@text}"
      puts "\n#{"-" * 35}\n"
    end
end

class SponsoredPost < Post
    def print_post
      puts "\n*****#{@title}*****"
      puts "#{@text}"
      puts "\n#{"-" * 35}\n"
    end
end

blog = Blog.new
blog.add_post Post.new "Ironhack", Date.new(2016, 06, 13), "First day of Ironhack was really cool!! by Soy"
blog.add_post Post.new "Coding", Date.new(2016, 06, 15), "Need more coffee!!!!! by Soy"
blog.add_post Post.new "Barcelona", Date.new(2016, 06, 14), "Great sunny day today :) by Soy"
blog.add_post Post.new "Brithday", Date.new(2016, 05, 13), "It's my brother's birthday today!!!"
blog.add_post Post.new "Coding", Date.new(2016, 05, 19), "Got my Scuba Diving Licence!!! by Soy"
blog.add_post Post.new "Barcelona", Date.new(2016, 06, 10), "Met my cohort at the beach:) :) by Soy"
blog.add_post SponsoredPost.new "Oakley", Date.new(2016, 06, 12), "Buy one Get one free!?!? "
blog.add_post SponsoredPost.new "NIVEA", Date.new(2016, 06, 14), "Sunscreen for SALE!!!"

blog.publish_front_page
