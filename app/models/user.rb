class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "spec/images/profile_picture.jpg"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  validates_presence_of :first_name, :last_name

end
