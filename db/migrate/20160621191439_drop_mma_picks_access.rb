class DropMmaPicksAccess < ActiveRecord::Migration
  def change
  drop_table :mma_picks_accesses
  end
end
