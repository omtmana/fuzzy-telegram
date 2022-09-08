class CreateRenameOldTableNames < ActiveRecord::Migration[6.1]
  def change
    rename_table :vender_sweets, :vendor_sweets
  end
end
