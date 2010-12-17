require 'spec_helper'

describe PostsController do
  
  before(:all) do    
  end
  
  describe "GET #index" do    
    it "should render index template" do
      get 'index'
      assigns[:posts].should_not be_nil
      response.should render_template('index')
    end    
  end
  
end
