Factory.sequence :email do |n|  
  "person#{n}@example.com"
end

FactoryGirl.define do
  factory :user do
    email
    encrypted_password  "123456"
    password_salt  "123456"
    password  "123456"
  end  
end