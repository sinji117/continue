class AddColumnFoods < ActiveRecord::Migration[6.0]
  def change
    add_column :foods, :start_time, :datetime
  end
end
