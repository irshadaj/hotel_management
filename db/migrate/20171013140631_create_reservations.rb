class CreateReservations < ActiveRecord::Migration[5.0]
  def change
    create_table :reservations do |t|
      t.references :customers, foreign_key: true
      t.integer :room
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
