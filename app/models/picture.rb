class Picture < ActiveRecord::Base
  has_attached_file :picture, :styles => { :medium => "300x300>", :thumb => "100x100>" },
  :default_url => "/images/:style/missing.png",
  storage: :s3,
  s3_credentials: {
    bucket: 'ProjectX-Makers',
    access_key_id: Rails.application.secrets.s3_access_key,
    secret_access_key: Rails.application.secrets.s3_secret_key
  }
  validates_attachment_content_type :picture, :content_type => /\Aimage\/.*\Z/
  
  belongs_to :listing
  end
