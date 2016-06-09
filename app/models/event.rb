class Event < ActiveRecord::Base
	mount_uploader :banner, BannerUploader
	has_many :fights, dependent: :destroy
end
