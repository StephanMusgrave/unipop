Given(/^I am not logged in$/) do
	visit destroy_user_session_path
end

Then(/^I should see a messege "(.*?)"$/) do |content|
	expect(page).to have_content content
end