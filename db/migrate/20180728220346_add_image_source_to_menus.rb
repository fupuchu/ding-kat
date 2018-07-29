class AddImageSourceToMenus < ActiveRecord::Migration[5.2]
  def change
    add_column :menus, :img_src, :string
  end
end
