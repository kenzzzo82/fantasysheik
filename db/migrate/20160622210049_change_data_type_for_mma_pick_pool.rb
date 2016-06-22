class ChangeDataTypeForMmaPickPool < ActiveRecord::Migration
  def change
  change_column :mma_picks_pools, :poolowner, :integer
  end
end
