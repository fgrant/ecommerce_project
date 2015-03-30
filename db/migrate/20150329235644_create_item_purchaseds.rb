class CreateItemPurchaseds < ActiveRecord::Migration
  def change
    create_table :item_purchaseds do |t|
      t.integer :quantity_bought
      t.decimal :price
      t.integer :item_id
      t.integer :order_id

      t.timestamps null: false
    end
  end
end
