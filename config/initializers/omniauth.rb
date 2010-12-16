Rails.application.config.middleware.use OmniAuth::Builder do  
  #provider :twitter, 'CONSUMER_KEY', 'CONSUMER_SECRET'
  provider :twitter, 'xSYvtZj1TO0FVYB8G27Ew', 'xXWtQyhspdGe39HPgjmB9qGYtjz4qFZbBZhXQ9qqHg'  
  #provider :facebook, 'APP_ID', 'APP_SECRET'
  provider :facebook, '74fe5cb0c088cda3bd4b6c09ebf31e25', 'd9692862b438acac3ba6ad615294e1f6'   
end 