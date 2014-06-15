Given(/^Muhanad has one hamster for sale$/) do
@muhanad_hamster = Listing.create(description: "a brown hamster", price: "1000", seller: shelley, picture: "spec/images/profile_picture.jpg")
end

Given(/^Ollie clicks on Muhanad's hamster description$/) do
  click_on @muhanad_hamster.description
  expect(current_path).to eq listing_path muhanad_hamster
end

And(/^Ollie sees a picture$/) do
  expect(page).to have_content profile_picture.jpg
end