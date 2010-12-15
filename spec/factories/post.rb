FactoryGirl.define do  
  factory :post do
    title 'Post'
    url 'golgolgol'
    description 'This is a post'    
    user
  end  
end