Given(/^A user with email "([^"]*)" exist$/) do |email|
  email = Users::Email.for(email)
  Users::Create.new(
    user_repository: User
  ).call(email)
end

When(/^I view the user with email "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should view the following information:$/) do |table|
  # table is a Cucumber::Core::Ast::DataTable
  pending # Write code here that turns the phrase above into concrete actions
end

