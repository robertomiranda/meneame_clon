FactoryGirl.define do
  factory :user do
    email  "example@koombea.com"
    encrypted_password  "123456"
    password_salt  "123456"
    password  "123456"
  end  
end