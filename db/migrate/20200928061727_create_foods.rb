class CreateFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :foods do |t|
      t.references :user, foreign_key: true
      t.string :name,     null: false
      t.integer :kcal,    null: false
      t.integer :money,   null: false
      t.string :note
      t.timestamps
    end
  end
end
