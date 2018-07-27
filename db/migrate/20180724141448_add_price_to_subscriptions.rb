class AddPriceToSubscriptions < ActiveRecord::Migration[5.2]
  def change
    add_column :subscriptions, :price, :integer
    add_column :subscriptions, :menu, :string
  end
end
