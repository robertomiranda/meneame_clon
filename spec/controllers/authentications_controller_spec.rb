require 'spec_helper'

describe AuthenticationsController do

  def mock_authentication(stubs={})
    (@mock_authentication ||= mock_model(Authentication).as_null_object).tap do |authentication|
      authentication.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it "assigns all authentications as @authentications" do
      Authentication.stub(:all) { [mock_authentication] }
      get :index
      assigns(:authentications).should eq([mock_authentication])
    end
  end

  describe "GET show" do
    it "assigns the requested authentication as @authentication" do
      Authentication.stub(:find).with("37") { mock_authentication }
      get :show, :id => "37"
      assigns(:authentication).should be(mock_authentication)
    end
  end

  describe "GET new" do
    it "assigns a new authentication as @authentication" do
      Authentication.stub(:new) { mock_authentication }
      get :new
      assigns(:authentication).should be(mock_authentication)
    end
  end

  describe "GET edit" do
    it "assigns the requested authentication as @authentication" do
      Authentication.stub(:find).with("37") { mock_authentication }
      get :edit, :id => "37"
      assigns(:authentication).should be(mock_authentication)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created authentication as @authentication" do
        Authentication.stub(:new).with({'these' => 'params'}) { mock_authentication(:save => true) }
        post :create, :authentication => {'these' => 'params'}
        assigns(:authentication).should be(mock_authentication)
      end

      it "redirects to the created authentication" do
        Authentication.stub(:new) { mock_authentication(:save => true) }
        post :create, :authentication => {}
        response.should redirect_to(authentication_url(mock_authentication))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved authentication as @authentication" do
        Authentication.stub(:new).with({'these' => 'params'}) { mock_authentication(:save => false) }
        post :create, :authentication => {'these' => 'params'}
        assigns(:authentication).should be(mock_authentication)
      end

      it "re-renders the 'new' template" do
        Authentication.stub(:new) { mock_authentication(:save => false) }
        post :create, :authentication => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested authentication" do
        Authentication.should_receive(:find).with("37") { mock_authentication }
        mock_authentication.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :authentication => {'these' => 'params'}
      end

      it "assigns the requested authentication as @authentication" do
        Authentication.stub(:find) { mock_authentication(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:authentication).should be(mock_authentication)
      end

      it "redirects to the authentication" do
        Authentication.stub(:find) { mock_authentication(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(authentication_url(mock_authentication))
      end
    end

    describe "with invalid params" do
      it "assigns the authentication as @authentication" do
        Authentication.stub(:find) { mock_authentication(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:authentication).should be(mock_authentication)
      end

      it "re-renders the 'edit' template" do
        Authentication.stub(:find) { mock_authentication(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested authentication" do
      Authentication.should_receive(:find).with("37") { mock_authentication }
      mock_authentication.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the authentications list" do
      Authentication.stub(:find) { mock_authentication }
      delete :destroy, :id => "1"
      response.should redirect_to(authentications_url)
    end
  end

end
