require 'spec_helper'

describe Comment do

  before(:all)do
    @post = Factory.create(:post)
  end

  before(:all)do
    @comment = Comment.new
  end

  it "should not create a new comment without post associeted" do
    pending
  end
end
