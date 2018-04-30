@bug_tracker
Feature: As a end user
I should be able open login and create a bug with all input successfully 
and I should able Logout successfully

@bug_tracker_open_login_popup
Scenario:Super bug tracker open login popup
Given I am in bug tracker home page
When I click login button
And I should able to see login popup window
And I am in bug tracker login popup window
And I enter valid credential
And I should able see Signed in Successfully
And I am in bug tracker login dashboard
And I click on create button
And I should able see create new issue popup
And I am in bug tracker create new issue popup
And I enter the valid data to the respective fields and click ok
Then I should able see the created issue in issue page

@bug_tracker_signout
Scenario:Super bug tracker signout
Given I am in bug tracker issue page
When I click signout
Then I should able see the bug tracker dashboard

