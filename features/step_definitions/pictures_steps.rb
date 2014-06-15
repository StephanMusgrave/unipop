Given(/^Shelley has one hamster for sale$/) do
Shelley_hamster = Listing.create(description: "a brown hamster", price: "1000", seller: shelley, picture: "spec/images/profile_picture.jpg")
end

Given(/^Ollie clicks on Shelley's hamster listing$/) do
click_on @shelley_hamster.description
expect(current_path).to eq listing_path @shelley_hamster
end

Given(/^Ollie sees a picture$/) do
  pending # express the regexp above with the code you wish you had
end