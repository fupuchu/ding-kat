class AddNameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_reference :users, :subscription
    # The code below is for active mailer to work DO NOT CHANGE
  end
end
