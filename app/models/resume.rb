class Resume < ApplicationRecord

	belongs_to :user
	
	include ImageUploader::Attachment(:image) # adds an `image` virtual attribute

end
