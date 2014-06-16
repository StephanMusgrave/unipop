class Listing < ActiveRecord::Base
	has_attached_file :picture, :styles => { :medium => "300x300>", :thumb => "100x100>" },
  :default_url => "/images/:style/missing.png",
  storage: :s3,
  s3_credentials: {
    bucket: 'ProjectX-Makers',
    access_key_id: Rails.application.secrets.s3_access_key,
    secret_access_key: Rails.application.secrets.s3_secret_key
  }

  validates_attachment_content_type :picture, :content_type => /\Aimage\/.*\Z/

  belongs_to :seller, class_name: 'User'
  has_and_belongs_to_many :buyers, class_name: 'User', association_foreign_key: 'buyer_id', join_table: 'buyers_listings'
  has_and_belongs_to_many :hashtags
  has_one :chatroom


  def hashtag_names
  	''
  end

	def hashtag_names=(hashtag_input)
		return if hashtag_input.blank?
		formatted_hashtags = hashtag_input.downcase.split(/[\s,|.]+/).uniq
 		formatted_hashtags.each do |one_hashtag|
			hashtag = Hashtag.find_or_create_by(name: one_hashtag)
			hashtags << hashtag
		end
	end
end



# def self.search(search_input)
# 	splitted_search_terms = search_input.split(', ')
# 	where("hashtags.each{|hashtag| hashtag.name = ?}", params[:search])
# end 

