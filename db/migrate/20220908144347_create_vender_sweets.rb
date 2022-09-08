class CreateVenderSweets < ActiveRecord::Migration[6.1]
  def change
    create_table :vender_sweets do |t|
      t.integer :vendor_id
      t.integer :sweet_id
      t.integer :price

      t.timestamps
    end
  end
end
