class Hashtag < ActiveRecord::Base
	has_and_belongs_to_many :listings
	validates :name, uniqueness: true

  def self.split(tag_list)
    tag_list.downcase.split(/[\s,|.]+/).uniq
  end
end
