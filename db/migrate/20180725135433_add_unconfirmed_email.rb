class AddUnconfirmedEmail < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :unconfirmed_email, :string # Only if using reconfirmable
  end
end
