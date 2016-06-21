class AddUserIdTommaPicksAccess < ActiveRecord::Migration
  def change
	add_column :mma_picks_access, :user_id, :integer
  end
end
