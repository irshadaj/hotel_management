class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.text :address
      t.string :credit_name
      t.bigint :credit_num
      t.string :credit_exp
      t.integer :credit_cvv

      t.timestamps
    end
  end
end
