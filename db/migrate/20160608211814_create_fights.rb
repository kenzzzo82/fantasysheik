class CreateFights < ActiveRecord::Migration
  def change
    create_table :fights do |t|
      t.string :fighter1
      t.string :fighter2
      t.string :favorite
      t.integer :points

      t.timestamps null: false
    end
  end
end
