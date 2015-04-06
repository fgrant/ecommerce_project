class AddHstRateToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :hst_rate, :decimal
  end
end
