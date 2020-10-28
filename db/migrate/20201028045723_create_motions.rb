class CreateMotions < ActiveRecord::Migration[6.0]
  def change
    create_table :motions do |t|
      t.references :user, foreign_key: true
      t.string :name, null: false
      t.integer :time, null: false
      t.integer :kcal, null: false
      t.timestamps
    end
  end
end
