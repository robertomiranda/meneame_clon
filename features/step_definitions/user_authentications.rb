Given /I am a valid user/ do
  Factory.create(:user, :email => "beto6626@hotmail.com")
end

Given /^I am logged as (.+), (.+)/ do|email,pass|
  fill_in('user_email', :with => email)
  fill_in('user_password', :with => pass)
  click_button('Sign in')
end