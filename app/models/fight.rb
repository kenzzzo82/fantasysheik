class Fight < ActiveRecord::Base
	belongs_to :event
	has_many :fighters
end
