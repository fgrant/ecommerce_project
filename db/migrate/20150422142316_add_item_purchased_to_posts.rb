class AddItemPurchasedToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :item_purchased, :string
  end
end
