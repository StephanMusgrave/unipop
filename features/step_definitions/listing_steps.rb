Then(/^the listing should belong to me$/) do
	expect(the_user.listing.first.description).to eq "Test"
end

Then(/^the seller of the listing should be me$/) do
  expect(listing.seller.first_name).to eq "Ollie"
end
