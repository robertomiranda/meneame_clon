TWITTER_CONFIG ={:consumer_key => 'xSYvtZj1TO0FVYB8G27Ew', :consumer_secret => 'xXWtQyhspdGe39HPgjmB9qGYtjz4qFZbBZhXQ9qqHg'}
FACEBOOK_CONFIG={:app_id => '74fe5cb0c088cda3bd4b6c09ebf31e25', :app_secret => 'd9692862b438acac3ba6ad615294e1f6'}

Rails.application.config.middleware.use OmniAuth::Builder do  
  #provider :twitter, 'CONSUMER_KEY', 'CONSUMER_SECRET'
  provider :twitter, 'xSYvtZj1TO0FVYB8G27Ew', 'xXWtQyhspdGe39HPgjmB9qGYtjz4qFZbBZhXQ9qqHg'
  
  #provider :facebook, 'APP_ID', 'APP_SECRET'
  provider :facebook, '74fe5cb0c088cda3bd4b6c09ebf31e25', 'd9692862b438acac3ba6ad615294e1f6', {:scope => 'publish_stream,offline_access'}   
end


