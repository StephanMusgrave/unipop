Given(/^Ollie is the first buyer to click "(.*?)"$/) do |clicky|
  click_on clicky
  expect(@louises_notebook.buyers.count).to eq 1
  expect(@louises_notebook.buyers.first).to eq @ollie
  expect(@louises_notebook.buyers.last).to eq @ollie
  expect(current_path).to eq "/listings/#{@louises_notebook.id}/chatroom"
end

Then(/^Ollie sees "(.*?)"$/) do |content|
  expect(page).to have_content content
end

Then(/^Ollie sees "(.*?)" in the comments field$/) do |content|
  find_field("Comment")
  find("textarea[placeholder=#{content}]")
end

Given(/^Ollie fills in the chat field with "(.*?)"$/) do |content|
  fill_in 'Comment', :with => content
end

Then(/^Ollie sees "(.*?)" on the chat page$/) do |content|
  expect(page).to have_css('li')
  expect(page).to have_content(content)
end

Given(/^Ollie has messaged Louise about her notebook$/) do
  @louises_notebook.chatroom.comments.create(body:'Hey, I wanna buy your notebook', user: @ollie)
end

Given(/^Ollie signs out$/) do
  logout
end

Given(/^Louise signs in and is on her dashboard$/) do
  login_as @louise
  visit '/dashboard'
end

Given(/^Louise sees "(.*?)" on the page$/) do |content|
  expect(page).to have_content content
end

Given(/^Louise clicks "(.*?)"$/) do |clicky_thing|
  click_on clicky_thing
end

Given(/^Louise is in the chatroom for her notebook$/) do
  expect(current_path).to eq listing_chatroom_path(@louises_notebook)
end



