Then(/^the listing should belong to me$/) do
	expect(user.listings).to include? "shoes"
end

Then(/^the seller of the listing should be me$/) do
  expect(listing.seller.first_name).to eq "Louise"
end
