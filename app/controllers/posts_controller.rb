class PostsController < ApplicationController
  def index
    @posts = Post.all
  end
  def show
    @post = Post.find(params[:id]) # finds post by id
  end
  def new
    @post = Post.new 
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

  def edit
    @post = Post.find(params[:id]) # finds post by id
    
  end
  def update
    @post = Post.find(params[:id]) # finds post by id

    if (@post.update(post_params))
      redirect_to @post
    else
      render 'edit'
    end

  end
  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    redirect_to posts_path
  end
  private def post_params
    params.require(:post).permit(:title, :body) # limits data needed for a post to title and body
  end
end
