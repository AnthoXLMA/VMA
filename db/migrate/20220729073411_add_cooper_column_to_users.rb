class AddCooperColumnToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :cooper_distance, :integer
  end
end
