class AddDeliveryArrangedToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :delivery_arranged, :boolean, default: false
  end
end
