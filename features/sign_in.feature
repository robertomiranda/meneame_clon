Feature: Sign In

	Scenario:Sign In with a valid user
		Given I am a valid user
		Given I am on the home page
		Given I am on sign_in	
		When I fill in "user_email" with "beto6626@hotmail.com"
    	When I fill in "user_password" with "123456"
    	When I press "Sign in"    	
    	Then I should see "beto6626@hotmail.com"     	