class FixMmaPicksAccess < ActiveRecord::Migration
  def self.up
    rename_table :mma_picks_access, :mma_picks_accesses
  end

  def self.down
    rename_table :mma_picks_access, :mma_picks_accesses
  end
end