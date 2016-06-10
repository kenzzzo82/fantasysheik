class CreateFighters < ActiveRecord::Migration
  def change
    create_table :fighters do |t|
      t.string :name
      t.integer :weight
      t.string :height
      t.integer :wins
      t.integer :losses
      t.integer :kos
      t.integer :submissions
      t.integer :decisions

      t.timestamps null: false
    end
  end
end
