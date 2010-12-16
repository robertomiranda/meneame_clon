class PostsController < ApplicationController
  
  def index    
  end
  
  def show
    @post = Post.find(params[:id])
    @comments = @post.comments
    @comment = Comment.new
  end
  
  def edit
    @post = Post.find(params[:id])
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
  
  def destroy
    @post_id = params[:id]
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to :action => :index
  end
  
  
  def user_post
    redirect_to :action => :index unless user_signed_in?
  end
  
  
end
