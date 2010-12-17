require 'spec_helper'

describe PostsController do
  
  
before(:all) do
  Post.delete_all
  @post = Post.new(:title => "title", :description => "content", :url => "urlllll")
  @post.user = Factory.create(:user)
  @post.save! 
end
  
  
  before(:each) do
    @user = Factory.create(:user)
    controller.stub!(:current_user).and_return(@user)
  end
  
  describe "GET #index" do    
    it "should render index template" do
      get 'index'      
      response.should render_template('index')
    end    
  end
  
  describe "GET #show" do
  
  it "should show a existing post" do    
    get 'show', :id => @post.id
    assigns[:post].should_not be_nil
    assigns[:comments].should_not be_nil
    response.should render_template('show')
  end
  
end
  
  describe "GET #new" do 
  it "should render new post form" do
    get 'new'
    assigns[:post].should_not be_nil
    response.should render_template('new')
  end 
end

describe "POST #create" do
  it "should create a new post with valid info" do    
    post_count = Post.count
    hash = {:title => "Another post", :description => "This another post", :url => "holamundo"}
    post 'create', :post => hash
    response.should redirect_to(posts_path)
    Post.count.should == post_count + 1
  end
  
  it "shouldn't create a new post with invalid info" do
    post_count = Post.count
    post 'create'
    response.should render_template('new')
    Post.count.should == post_count
  end
end


describe "DELETE #destroy" do  
  it "should delete a post" do    
    post_count = Post.count
    delete "destroy", :id => @post.id
    response.should redirect_to(posts_path)
    Post.count.should == post_count - 1
  end
end
  
end
