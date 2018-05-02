@Login_Createbug_Logout
Feature: As a end user
I should be able login bug tracker application and create a bug with all input successfully 
and I should able Logout successfully

@Smoke
Scenario: Login with valid credentials
Given I am in bug tracker home page
When I login with valid credentials
Then I should able to see message "Signed in Successfully"


@Create_ValidBug
Scenario: Create ValidBug
Given I am in bug tracker create new issue popup
When I create with valid credentials
Then I should able to see the created issue in issue list

@Signout
Scenario: User signing out from the application
Given I am in bug tracker issue page
When I click signout
Then I should able see the message as "Logged out!"