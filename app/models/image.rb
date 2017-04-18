class Image < ActiveRecord::Base
    mount_uploader :scenery_picture, ImageUploader
    
    # belongs_to :user
end
