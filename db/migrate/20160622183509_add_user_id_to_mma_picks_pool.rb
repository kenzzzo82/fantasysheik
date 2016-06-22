class AddUserIdToMmaPicksPool < ActiveRecord::Migration
  def change
    add_column :mma_picks_pools, :userid, :integer
  end
end
