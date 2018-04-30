Given("I am in bug tracker home page") do
  @browser.navigate.to "https://bugtrackers.herokuapp.com/"
  sleep 2
  @browser.manage.window.maximize
  sleep 2
end

When("I click login button") do
  @browser.find_element(xpath: "//a[@href='/issues']").displayed?
  sleep 2
  @browser.find_element(xpath: "//div[2]/ul/li[2]/form/div/input").click
  sleep 2
end

When("I should able to see login popup window") do
  @browser.find_element(id:"inputUsername").displayed?
  sleep 2
end

When("I am in bug tracker login popup window") do
  @browser.find_element(id:"inputUsername").displayed?
  sleep 2
end

When("I enter valid credential") do
  @browser.find_element(id:"inputUsername").click
  sleep 2
  @browser.find_element(id:"inputUsername").send_keys "darshan"
  sleep 2
  @browser.find_element(id:"inputPassword").click
  sleep 2
  @browser.find_element(id:"inputPassword").send_keys "Qwerty123#"
  sleep 2
  @browser.find_element(name:"commit").click
  sleep 2
end

When("I should able see Signed in Successfully") do
  @browser.find_element(xpath: "//a[@href='/issues']").displayed?
  sleep 2
end


When("I am in bug tracker login dashboard") do
  @browser.find_element(xpath: "//a[@href='/issues']").displayed?
  sleep 2
end

When("I click on create button") do
  @browser.find_element(xpath: "//div[3]/div[1]/form/div/input").click
  sleep 2
end

When("I should able see create new issue popup") do
  @browser.find_element(id:"myModalLabel").displayed?
  sleep 2
end

When("I am in bug tracker create new issue popup") do
  @browser.find_element(id:"myModalLabel").displayed?
  sleep 2
end

When("I enter the valid data to the respective fields and click ok") do
  @browser.find_element(id:"myModalLabel").displayed?
  sleep 2
  @browser.find_element(id:"myModalLabel").click
  sleep 2
  @browser.find_element(id:"Issues3").send_keys "internet issue"
  sleep 2
  @browser.find_element(id:"issue_issue_type").click
  sleep 2
  @browser.find_element(xpath: "//div/form/div[2]/div[2]/div/select/option[2]").click
  sleep 2
  @browser.find_element(id:"Description3").click
  sleep 2
  @browser.find_element(id:"Description3").send_keys "While accessing internet in between it is going to disconnect automatically"
  sleep 2
  @browser.find_element(id:"Comment3").click
  sleep 2
  @browser.find_element(id:"Comment3").send_keys "Rectify the issue on priority"
  sleep 2
  @browser.find_element(id:"issue_status").click
  sleep 2
  @browser.find_element(xpath: "//div/form/div[2]/div[2]/div/select/option[2]").click  
  sleep 2
  @browser.find_element(name:"commit").click
  sleep 2
end

Then("I should able see the created issue in issue page") do
  @browser.find_element(xpath: "//a[@href='/issues']").displayed?
  sleep 2
end

Given("I am in bug tracker issue page") do
  @browser.find_element(xpath: "//a[@href='/issues']").displayed?
  sleep 2
end

When("I click signout") do
  @browser.find_element(xpath: "//div[2]/ul/li[2]/form/div/input[2]").click
  sleep 2
end

Then("I should able see the bug tracker dashboard") do
  @browser.find_element(xpath: "//a[@href='/issues']").displayed?
  sleep 2
end