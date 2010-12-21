Feature: List Posts
Scenario: Users see articles list in homepage	
	Given I have posts titled "post1, post2"
	When I go to "the homepage"
	Then I should see "post1"
	And I should see "post2"