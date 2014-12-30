class Reason < ActiveRecord::Base
  mount_uploader :picture, PictureUploader
  attr_accessible :because, :details, :picture
end
