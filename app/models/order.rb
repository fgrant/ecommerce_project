class Order < ActiveRecord::Base
  validates :status, :customer_id, presence:true
  validates :customer_id, numericality:true 
  validates :pst_rate, :gst_rate, :hst_rate, numericality:true
  belongs_to:customer
  has_many:item_purchased
end
