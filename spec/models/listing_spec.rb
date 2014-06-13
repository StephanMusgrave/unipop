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

		context 'separating two hashtags' do
			it 'adds two hashtags if separated by one space and one comma' do
				my_listing.hashtag_names = 'bottle, 750ml'
				expect(my_listing.hashtags.count).to eq 2
			end

			it 'adds two hashtags if separated by two spaces and one comma' do
				my_listing.hashtag_names = 'bottle,  750ml'
				expect(my_listing.hashtags.count).to eq 2
			end

			it 'adds two hashtags if separated by just one space' do
				my_listing.hashtag_names = 'bottle 750ml'
				expect(my_listing.hashtags.count).to eq 2
			end

			it 'adds two hashtags if separated by a whole lot of edges cases' do
				my_listing.hashtag_names = 'bottle 750ml   , new . filled  ..'
				expect(my_listing.hashtags.count).to eq 4
			end
		end

		context 'when the user inputs more than one non-unique hashtag' do
			it 'only adds unique hastags to the database' do
				my_listing.hashtag_names = 'bottle, bottle, Bottle, BOTTLE, BottLe'
				expect(my_listing.hashtags.count).to eq 1
			end
		end

	end

end