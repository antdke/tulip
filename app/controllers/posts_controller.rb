class PostsController < ApplicationController
  def index
    
  end
  def new
    @addpostheader = 'Create a new post!'
  end
  def create
    render plain: params[:post].inspect
  end
end
