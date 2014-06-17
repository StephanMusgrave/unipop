class Hashtag < ActiveRecord::Base
	has_and_belongs_to_many :listings

  def self.split(tag_list)
    tag_list.downcase.split(/[\s,|.]+/).uniq
  end
end
