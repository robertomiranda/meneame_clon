FactoryGirl.define do
  factory :post do
    title 'Post'
    description 'This is a post'
    user
  end  
end