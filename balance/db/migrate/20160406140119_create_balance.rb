class CreateBalance < ActiveRecord::Migration
  def change
    create_table :balances do |t|
      t.string :purchaser_name
      t.string :item_description
      t.float :item_price
      t.integer :purchase_count
      t.string :merchant_address
      t.integer :merchant_name
      t.string :nickname

      t.timestamps
    end
  end
end
