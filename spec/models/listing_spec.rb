require 'spec_helper'

describe Listing do

	let(:my_listing) { Listing.create(description: "Louise's water bottle", price: "3") }
	
	describe '#hashtag_names=' do
		
		context 'no hashtags' do
			it 'does nothing' do
				my_listing.hashtag_names = ''
				expect(my_listing.hashtags).to be_empty
			end
		end

		context 'one hashtag' do
			it 'adds it to the database' do
				my_listing.hashtag_names = 'bottle'
				expect(my_listing.hashtags.count).to eq 1
			end
		end

		context '	two hashtags seperated by commas' do
			it 'adds it to the database' do
				my_listing.hashtag_names = 'bottle, 750ml'
				expect(my_listing.hashtags.count).to eq 2
			end
		end

	end

end