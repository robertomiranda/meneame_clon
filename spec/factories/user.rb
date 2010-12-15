FactoryGirl.define do
  factory :user do
    email  "example@koombea.com"
    encrypted_password  "1234"
    password_salt  "1234"
  end  
end