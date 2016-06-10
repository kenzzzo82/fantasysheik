class AddFighter2idToFights < ActiveRecord::Migration
  def change
    add_column :fights, :fighter2_id, :integer
  end
end
