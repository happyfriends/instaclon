Given(/^A user with email "([^"]*)" exist$/) do |email|
  @email_from_user = Users::Email.for(email)
  Users::Create.new(
    user_repository: User
  ).call(@email_from_user)
end

When(/^I view the user with email "([^"]*)"$/) do |email|
  @user_presenter = Users::WithEmail.new(
    user_repository: User
  ).call(@email_from_user)
end

Then(/^I should view the following information:$/) do |user_info|
  expect(@user_presenter.to_h).to eql user_info.hashes.first
end

