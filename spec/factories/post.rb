FactoryGirl.define do  
  factory :post do
    title 'Post'
    url 'http://www.facebook.com/'
    description 'This is a post'    
    user
  end  
end