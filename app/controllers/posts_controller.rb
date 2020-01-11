class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  def show
    @post = Post.find(params[:id]) # shows post by name its assigned
  end
  def new
    @addpostheader = 'Create a new post!'
  end
  def create
    #render plain: params[:post].inspect
    @post = Post.new(post_params) # directs user to their newly made post

    if (@post.save)
      redirect_to @post
    else
      render 'new'
    end
  end

  private def post_params
    params.require(:post).permit(:title, :body) # limits data needed for a post to title and body
  end
end
