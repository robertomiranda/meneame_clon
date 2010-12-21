Feature: Manage Post
	Scenario:My post list
		Given I am a valid user
		Given I am on the home page
		Given I am on sign_in	
		When I fill in "user_email" with "beto6626@hotmail.com"
    	When I fill in "user_password" with "123456"
    	When I press "Sign in"
    	When I follow "Create"
    	When I fill in "post_title" with "title"
    	When I fill in "post_url" with "http://facebook.com/robertomiranda"
    	When I fill in "post_description" with "description"
    	When I press "Create"
    	Then I should see "title"
    	And I should see "http://facebook.com/robertomiranda"
    	And I should see "description"
    	    	