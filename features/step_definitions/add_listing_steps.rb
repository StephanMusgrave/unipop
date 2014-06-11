Given(/^I want to sell some stuff$/) do
  visit '/'
  click_on '+'
end

Then(/^I should be able to post a listing$/) do
	expect(current_path).to eq '/listings/new'
  fill_in 'Description', with: 'Test'
  click_on 'Add my stuff'
  @listing = Listing.last.id
  expect(current_path).to eq "/listings/#{@listing}"
  expect(page).to have_content 'Test'
end

Then(/^the listing should belong to seller$/) do
	expect(Listing.last.seller.first_name).to eq "Ollie"
end

