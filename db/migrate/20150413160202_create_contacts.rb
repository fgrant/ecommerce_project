class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :phone
      t.string :address
      t.string :email
      t.string :web

      t.timestamps null: false
    end
  end
end
