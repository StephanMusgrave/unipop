require 'will_paginate/array'

class Listing < ActiveRecord::Base   
  validates :description, presence: true
  #attr_accessible :name, :image_containers_attributes
  belongs_to :seller, class_name: 'User'
  has_and_belongs_to_many :buyers, class_name: 'User', association_foreign_key: 'buyer_id', join_table: 'buyers_listings'
  has_and_belongs_to_many :hashtags
  has_one :chatroom
  has_many :image_containers
  accepts_nested_attributes_for :image_containers, allow_destroy: true
  validate :at_least_one_picture
  
  def at_least_one_picture
    unless image_containers.any?
      errors[:base] << 'You must add at least one picture'
    end 
  end
  
  def main_pic
    image_containers.any? ? image_containers.first.picture : 'no image'
  end
  
  def self.search(query)
    if query 
      Hashtag.split(query).map { |name|
        tag = Hashtag.find_by(name: name)
        tag ? tag.listings.order(created_at: :desc) : []
      }.flatten.compact.uniq
    else
      self.all
    end
  end

  def hashtag_names
  	hashtags.map(&:name).join(', ')
  end

	def hashtag_names=(hashtag_input)
    hashtags.clear
		return if hashtag_input.blank?
		formatted_hashtags = Hashtag.split(hashtag_input)
 		formatted_hashtags.each do |one_hashtag|
			hashtag = Hashtag.find_or_create_by(name: one_hashtag)
			hashtags << hashtag
		end
	end

  def last_comment
    chatroom.comments.last
  end
  
end

# def self.search(search_input)
# 	splitted_search_terms = search_input.split(', ')
# 	where("hashtags.each{|hashtag| hashtag.name = ?}", params[:search])
# end 

