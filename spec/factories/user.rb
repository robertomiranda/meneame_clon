Factory.sequence :email do |n|  
  "person#{n}@example.com"
end

FactoryGirl.define do
  factory :user do
    email    
    password  "123456"
  end  
end