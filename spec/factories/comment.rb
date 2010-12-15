
FactoryGirl.define do
  factory :comment do    
    content 'This is a comment'
    post
    user
  end  
end