class AddMenuReferenceToUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :subscriptions, :menu
    add_reference :users, :menu
  end
end
