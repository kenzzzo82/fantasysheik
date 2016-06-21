class CreateMmaPicksAccesses < ActiveRecord::Migration
  def change
    create_table :mma_picks_access do |t|

      t.timestamps null: false
    end
  end
end
