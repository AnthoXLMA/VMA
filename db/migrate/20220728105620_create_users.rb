class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :firstname
      t.integer :running_time

      t.timestamps
    end
  end
end
