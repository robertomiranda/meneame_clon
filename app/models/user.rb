class User < ActiveRecord::Base
  has_many :authentications
  has_many :posts, :dependent => :destroy, :order => "id"
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable, :lockable and :timeoutable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :twitter_client  
  
  def publish_post (post)
    
    for i in self.authentications
      
      if i.provider == "twitter"
      p "twitter"+"-"*100 
      twitter_client = TwitterOAuth::Client.new(:consumer_key => TWITTER_CONFIG['consumer_key'], 
                                              :consumer_secret => TWITTER_CONFIG['consumer_secret'], :token => i.twitter_token, 
                                              :secret => i.twitter_secret)
      p "twitter"+twitter_client.authorized?.to_s  
      twitter_client.update(post.to_s)
      elsif i.provider == "facebook"
#        facebook_client = FacebookOAuth::Client.new(:application_id => FACEBOOK_CONFIG[:app_id],
#                                           :application_secret => FACEBOOK_CONFIG[:app_secret], :token => i.facebook_token)
#        
#        facebook_client.authorie_url(:scope => 'publish_stream')
#        facebook_client.me.feed(:create, :message => "hola esta es una prueba de meneame clon")
          
         fg_client = FGraph::Client.new(:access_token => i.facebook_token)       
         fg_client.publish_feed('me', :message => post.to_s)   
        
      end      
    end
  end
  
end
