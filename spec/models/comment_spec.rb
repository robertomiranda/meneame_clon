require 'spec_helper'

describe Comment do

  before(:all)do    
    @post = Factory.create(:post)
    @user = User.new
    @user.email = "example222@koombea.com"
    @user.encrypted_password = "123456"
    @user.password_salt = "123456"
    @user.password = "123456"
  end

  before(:each)do
    @comment = Comment.new
  end

  it "should not create a new comment without post associated" do
    @comment.content = "content"
    @comment.user = @user
    @comment.should_not be_valid    
   end
  
   it "should not create a new @comment without user" do     
    @comment.content = "content"    
    @comment.post = @post   
    @comment.should_not be_valid    
   end
 
   it "should not create a new @comment without content" do     
     @comment.post = @post
     @comment.user = @user
     @comment.should_not be_valid
   end 
 
   it "should not create a comment with less than 3 chars in content" do
     @comment.content = "c"    
     @comment.post = @post
     @comment.user = @user
     @comment.should_not be_valid
   end
   
   it "should not create a comment with more than 255 chars in author" do
     @comment.content = "c"*256    
     @comment.post = @post
     @comment.user = @user
     @comment.should_not be_valid
   end
 
  
end
