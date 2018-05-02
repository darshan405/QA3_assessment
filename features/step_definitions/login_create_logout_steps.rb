Given("I am in bug tracker home page") do
  @browser.navigate.to "https://bugtrackers.herokuapp.com/"
  sleep 2
  @browser.manage.window.maximize
  sleep 2
  a = @browser.find_element(xpath: "//a[@href='/issues']")
  if a.displayed?
    puts "pass"
  else
    raise "fail"
  end
  sleep 2
  @browser.find_element(xpath: "//div[2]/ul/li[2]/form/div/input").click
  sleep 2
end

When("I login with valid credentials") do
  @browser.find_element(id:"inputUsername").click
  sleep 2
  @browser.find_element(id:"inputUsername").send_keys "darshan"
  sleep 2
  @browser.find_element(id:"inputPassword").click
  sleep 2
  @browser.find_element(id:"inputPassword").send_keys "Qwerty123#"
  sleep 2
  @browser.find_element(name:"commit").click
  sleep 1
end

Then("I should able to see message {string}") do |var|
  a = @browser.find_element(xpath: "//div[1]/div/div/p").text
  if var == a
    puts "#{var}"
  else 
    raise "fail"
  end
end

Given("I am in bug tracker create new issue popup") do
  @browser.find_element(xpath: "//div[3]/div[1]/form/div/input").click
  sleep 2
  a = @browser.find_element(id:"myModalLabel")
  if a.displayed?
    puts "pass"
  else
    raise "fail"
  end
  sleep 2
end

When("I create with valid credentials") do
  @browser.find_element(id:"myModalLabel").click
  sleep 2
  @browser.find_element(id:"Issues3").send_keys "Internet issue"
  sleep 2
  @browser.find_element(id:"issue_issue_type").click
  sleep 2
  @browser.find_element(xpath: "//div/form/div[2]/div[2]/div/select/option[2]").click
  sleep 2
  @browser.find_element(id:"Description3").click
  sleep 2
  @browser.find_element(id:"Description3").send_keys "While accessing internet in between it is going to disconnect automatically."
  sleep 2
  @browser.find_element(id:"Comment3").click
  sleep 2
  @browser.find_element(id:"Comment3").send_keys "Rectify the issue on priority."
  sleep 2
  @browser.find_element(id:"issue_status").click
  sleep 2
  @browser.find_element(xpath: "//div/form/div[2]/div[2]/div/select/option[2]").click
  sleep 2
  @browser.find_element(name:"commit").click
  sleep 2
end

Then("I should able to see the created issue in issue list") do
  sleep 2
  a = @browser.find_element(xpath: "//div[3]/div[2]/div[1]/div[1]")
  if a.displayed?
    puts "pass"
  else
    raise "fail"
  end
  sleep 2
end

Given("I am in bug tracker issue page") do
  a = @browser.find_element(xpath: "//a[@href='/issues']")
  if a.displayed?
    puts "pass"
  else
    raise "fail"
  end
end

When("I click signout") do
  @browser.find_element(xpath: "//div[2]/ul/li[2]/form/div/input[2]").click
  sleep 2
end

Then("I should able to see the message as {string}") do |var|
  a = @browser.find_element(xpath: "//div[1]/div/div/p").text
  if var == a
    puts "#{var}"
  else
    raise "fail"
  end
  sleep 2
end
