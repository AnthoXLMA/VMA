class AddPercentageColumnToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :percentage_speed, :integer
  end
end
