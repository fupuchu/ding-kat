class AddColumnsToMenus < ActiveRecord::Migration[5.2]
  def change
    add_column :menus, :price, :integer
    add_column :menus, :line_1, :string
    add_column :menus, :line_2, :string
    add_column :menus, :line_3, :string
    add_column :menus, :line_4, :string
  end
end
