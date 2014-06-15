Given(/^Ollie visits a listing he has already wanted$/) do
  louises_notebook
  @ollie.want_listings << @louises_notebook
  visit '/'
  click_on @louises_notebook.description
  expect(page).not_to have_content 'I want it!'
end

Then(/^Ollie clicks 'Changed my mind'$/) do
	click_on 'Changed my mind'
end

Then(/^he is taken to the homepage to begin browsing again$/) do
	expect(current_path).to eq '/'
end

Then(/^he is told he has been unwanted it$/) do
	expect(page).to have_content "You've just unwanted an item, why not check out some more cool stuff?"
end