class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :f_name
      t.string :l_name
      t.string :address
      t.string :city
      t.string :country
      t.string :postal_code
      t.string :email
      t.integer :province_id
      t.boolean :outstanding_order

      t.timestamps null: false
    end
  end
end
