class Employee < ApplicationRecord

	mount_uploader :image, ImageUploader

	validates_processing_of :image
	validate :image_size_validation
	validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i

	# belongs_to :human_resource
	 
	private
	  def image_size_validation
	    errors[:image] << "should be less than 500KB" if image.size > 0.5.megabytes
	  end
end
