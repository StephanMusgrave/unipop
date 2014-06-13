#-----  hashtags stuff
 Then(/^I should see a "(.*?)" field$/) do |field_name|
  expect(page).to have_field(field_name)
end