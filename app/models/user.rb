class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "spec/images/profile_picture.jpg"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  has_many :sales_listings, class_name: 'Listing', foreign_key: 'seller_id'
  has_and_belongs_to_many :want_listings, class_name: 'Listing', foreign_key: 'buyer_id', join_table: 'buyers_listings'

  has_many :chatrooms, foreign_key: 'buyer_id', class_name: 'User'

  validates_presence_of :first_name, :last_name

  def all_chatrooms
    (want_listings.map(&:chatroom) + sales_listings.map(&:chatroom)).compact
  end
end


