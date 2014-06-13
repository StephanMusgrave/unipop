Given(/^Ollie is the first buyer to click "(.*?)"$/) do |arg1|
  click_on "I want it!"
  expect(@louises_notebook.buyers.count).to eq 1
  expect(@louises_notebook.buyers.first).to eq @ollie
  expect(@louises_notebook.buyers.last).to eq @ollie
  expect(current_path).to eq "/listings/#{@louises_notebook.id}/buyers/#{@ollie.id}/chat/new"
end

Then(/^Ollie sees "(.*?)"$/) do |content|
  expect(page).to have_content content
end

Then(/^Ollie sees "(.*?)" in the chat field$/) do |content|
  find_field("comment")
  find("comment[placeholder=#{content}]")
end

