class AddFighter1idToFights < ActiveRecord::Migration
  def change
    add_column :fights, :fighter1_id, :integer
  end
end
