class AuthenticationsController < ApplicationController  
  
  def index
    @authentications = current_user.authentications if current_user 
  end

  def create
   omniauth = request.env["omniauth.auth"]
   puts "-"*100
   p request.env["omniauth.auth"]
    authentication = Authentication.find_by_provider_and_uid(omniauth['provider'], omniauth['uid'])
    if authentication
      flash[:notice] = "Signed in successfully."
      sign_in_and_redirect(:user, authentication.user)
    elsif current_user
      puts "/"*100      
      current_user.authentications.create!(:provider => omniauth['provider'], :uid => omniauth['uid'],
                                           :twitter_token =>  omniauth['provider'] == "twitter" ? omniauth['credentials']['token'] : nil,
                                           :twitter_secret => omniauth['provider'] == "twitter" ? omniauth['credentials']['secret'] : nil,
                                           :facebook_token => omniauth['provider'] == "facebook" ? omniauth['credentials']['token'] : nil) 
                                           
      flash[:notice] = "Authentication successful."
      redirect_to authentications_url    
    end
  end

  def destroy
    @authentication = current_user.authentications.find(params[:id])
    @authentication.destroy
    flash[:notice] = "Successfully destroyed authentication."
    redirect_to authentications_url
  end
end
