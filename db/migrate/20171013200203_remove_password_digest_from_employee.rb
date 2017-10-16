class RemovePasswordDigestFromEmployee < ActiveRecord::Migration[5.0]
  def change
    remove_column :employees, :password_digest, :string
  end
end
