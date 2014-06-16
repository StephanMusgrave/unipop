class Listing < ActiveRecord::Base
	
  
  belongs_to :seller, class_name: 'User'
  has_and_belongs_to_many :buyers, class_name: 'User', association_foreign_key: 'buyer_id', join_table: 'buyers_listings'
  has_and_belongs_to_many :hashtags
  has_many :image_containers

  def hashtag_names
  	''
  end

	def hashtag_names=(hashtag_input)
		return if hashtag_input.blank?
		formatted_hashtags = hashtag_input.downcase.chars.uniq!.join
		formatted_hashtags.split(/[\s,|.]+/).each do |one_hashtag|
			hashtag = Hashtag.find_or_create_by(name: one_hashtag)
			hashtags << hashtag
		end
	end

end



# def self.search(search_input)
# 	splitted_search_terms = search_input.split(', ')
# 	where("hashtags.each{|hashtag| hashtag.name = ?}", params[:search])
# end 

