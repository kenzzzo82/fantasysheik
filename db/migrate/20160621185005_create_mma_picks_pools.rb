class CreateMmaPicksPools < ActiveRecord::Migration
  def change
    create_table :mma_picks_pools do |t|
      t.string :name
      t.date :expires
      t.string :poolowner

      t.timestamps null: false
    end
  end
end
