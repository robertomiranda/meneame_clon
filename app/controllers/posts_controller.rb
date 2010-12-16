class PostsController < ApplicationController
  
  def index    
  end
  
  def show    
  end
  
  def edit
    
  end
  
  def update    
  end
  
  def new
    @post = Post.new
  end
  
  def create
    @post = Post.new(params[:post])
    @post.user = current_user
    if @post.save
      redirect_to(posts_path)
    else
      render :action => :new
    end
  end
  
  def destory
    
  end
  
  
end
