class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.string :name
      t.date :joined
      t.timestamp :last_login
      t.timestamp :last_logout
      t.float :hours_current
      t.float :hours_total
      t.string :password
      t.integer :role_level

      t.timestamps
    end
  end
end
