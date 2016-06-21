class AddPoolIdToMmaPicksAccess < ActiveRecord::Migration
  def change
    add_column :mma_picks_access, :pool_id, :integer
  end
end
