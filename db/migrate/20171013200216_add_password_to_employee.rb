class AddPasswordToEmployee < ActiveRecord::Migration[5.0]
  def change
    add_column :employees, :password, :string
  end
end
