class Image < ActiveRecord::Base
  attr_accessible :album_id, :image_url, :title
end
