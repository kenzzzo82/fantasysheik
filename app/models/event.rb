class Event < ActiveRecord::Base
	mount_uploader :banner, BannerUploader
end
