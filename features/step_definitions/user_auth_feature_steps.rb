Given(/^I sign up with a valid email$/) do
	fill_in 'First name', with: 'Ollie'
	fill_in 'Last name', with: 'Valid'
	fill_in 'Email', with: 'ollie@nyu.edu'
	fill_in 'Password', with: '12345678'
	fill_in 'Password confirmation', with: '12345678'
	click_on('Sign up')
end

Then(/^I should be redirected to the homepage$/) do
	expect(current_path).to eq '/'
end

Given(/^I sign up with a anvalid email$/) do
	fill_in 'First name', with: 'Ollie'
	fill_in 'Last name', with: 'Invalid'
	fill_in 'Email', with: 'ollie@hotmail.com'
	fill_in 'Password', with: '12345678'
	fill_in 'Password confirmation', with: '12345678'
	click_on('Sign up')
end

Then(/^I should be see 'Email is invalid'$/) do
	expect(page).to have_content('Email is invalid')
end