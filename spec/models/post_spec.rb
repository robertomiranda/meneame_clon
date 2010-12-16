require 'spec_helper'

describe Post do
  
  before(:all) do
    @user = Factory.create(:user)
  end
  
  before(:each) do
    @post = Post.new
  end
  
  it "should not create a new post without user associated" do
    @post.title = "title"
    @post.description = "description"
    @post.url = "http://www.facebook.com/"
    @post.should_not be_valid
  end

  it "should create a new post with title" do
    @post.title = "title"
    @post.description = "description"
    @post.url = "http://www.facebook.com/"
    @post.user = @user
    @post.should be_valid
  end
 
  it "should not create a new post with less 3 characters for the title" do
    @post.title = "t"
    @post.description = "description"
    @post.url = "http://www.facebook.com/"
    @post.user = @user
    @post.should_not be_valid
  end

  it "should not create a new post with more 100 characters for the title" do
    @post.title = "t"*200
    @post.description = "description"
    @post.url = "http://www.facebook.com/"
    @post.user = @user
    @post.should_not be_valid
  end
  
  
end
