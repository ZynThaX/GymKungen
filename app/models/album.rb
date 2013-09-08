class Album < ActiveRecord::Base
  attr_accessible :info, :is_profile_album, :title, :user_id

  has_many :images
  
end
