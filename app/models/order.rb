class Order < ActiveRecord::Base
  validates :status, customer_id, presence:true
  validates :customer_id,numericality{only_integer:true }
  validates :pst_rate, gst_rate, hst_rate, numericality:true
  belongs_to:customer
  has_many:itempurchased
end
