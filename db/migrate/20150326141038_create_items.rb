class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :description
      t.decimal :price
      t.integer :quantity_on_hand
      t.boolean :is_new
      t.boolean :is_on_sale
      t.boolean :is_upgrade
      t.string :category

      t.timestamps null: false
    end
  end
end
