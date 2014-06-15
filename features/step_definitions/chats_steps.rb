Given(/^Ollie is the first buyer to click "(.*?)"$/) do |arg1|
  click_on "I want it!"
  expect(@louises_notebook.buyers.count).to eq 1
  expect(@louises_notebook.buyers.first).to eq @ollie
  expect(@louises_notebook.buyers.last).to eq @ollie
  expect(current_path).to eq "/listings/#{@louises_notebook.id}/buyers/#{@ollie.id}/chat/new"
end

Given(/^Ollie opens the chat with "(.*?)"$/) do |arg1|
  expect(page).to have_content "Chatroom for Louise's: my makers academy black notebook"
  expect(page).to have_content "Start typing here to chat with Louise"
  expect(page).to have_content "Hi I'm interested in buying your lovely notebook."
end

Then(/^Louise sees Ollie's message about her notebook listing$/) do
  expect(current_path).to eq "/listings/#{@louises_notebook.id}/buyers/#{@ollie.id}/chat/new"
  expect(page).to have_content "Hi I'm interested in buying your lovely notebook."
end

Then(/^Louise says "(.*?)"$/) do |arg1|
  expect(current_path).to eq "/listings/#{@louises_notebook.id}/buyers/#{@ollie.id}/chat/new" 
  expect(page).to have_content "Great, meet me in union bar at 1pm with the readdies"
end

Then(/^Ollie says "(.*?)"$/) do |arg1|
  expect(current_path).to eq "/listings/#{@louises_notebook.id}/buyers/#{@ollie.id}/chat/new"
  expect(page).to have_content "OK, see you there my number is 07775 678678"
end
