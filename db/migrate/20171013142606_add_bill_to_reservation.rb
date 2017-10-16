class AddBillToReservation < ActiveRecord::Migration[5.0]
  def change
    add_column :reservations, :bill, :float
  end
end
