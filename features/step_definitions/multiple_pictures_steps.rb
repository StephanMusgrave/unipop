
Given(/^Muhanad has one hamster for sale$/) do
  Listing.create(description: "a brown hamster", price: "1000", seller: muhanad, picture: "spec/images/profile_picture.jpg")
end

Given(/^Ollie clicks on Muhanad's hamster description$/) do
  click_on @muhanad_hamster.description
  expect(current_path).to eq listing_path @muhanad_hamster
end

Given(/^Ollie sees a picture$/) do
  expect(page).to have_content profile_picture.jpg
end

def muhanad
  @muhanad ||= User.create(email:'muhanad@muhanad.com', password:'12345678', password_confirmation:'12345678', first_name:'Muhanad', last_name:'Al-Rubaiee')
end