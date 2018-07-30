class AddColumnsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :phone_number, :string
    add_column :users, :address_one, :string
    add_column :users, :address_two, :string
    add_column :users, :postal_code, :string
    add_column :users, :subscription_start, :date
    add_column :users, :subscription_end, :date
    add_column :users, :subscription_renew, :boolean, default: true
  end
end
