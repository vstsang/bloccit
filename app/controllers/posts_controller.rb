class PostsController < ApplicationController
  def index
    @posts = Post.all
    @posts.each_with_index do |v,i|
      if i % 5 == 0
        v.title = "SPAM"
      end
    end

  end

  def show
  end

  def new
  end

  def edit
  end
end
