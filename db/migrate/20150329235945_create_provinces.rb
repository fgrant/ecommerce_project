class CreateProvinces < ActiveRecord::Migration
  def change
    create_table :provinces do |t|
      t.string :prov_name
      t.decimal :pst_rate
      t.decimal :gst_rate
      t.decimal :hst_rate

      t.timestamps null: false
    end
  end
end
