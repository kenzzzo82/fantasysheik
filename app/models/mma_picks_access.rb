class MmaPicksAccess < ActiveRecord::Base
	has_many :users
	belongs_to :mma_picks_pools

	scope :by_user, -> user { where (user_id: user)}

end
