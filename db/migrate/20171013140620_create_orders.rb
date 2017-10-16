class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.references :reservations, foreign_key: true
      t.references :items, foreign_key: true
      t.integer :cost

      t.timestamps
    end
  end
end
