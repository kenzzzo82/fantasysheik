class MmaPicksAccess < ActiveRecord::Base
	has_many :mma_picks_pools
	has_many :users
end
