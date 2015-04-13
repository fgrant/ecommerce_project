class Province < ActiveRecord::Base
  validates :prov_name, presence: true
  validates :pst_rate, :gst_rate, :hst_rate, numericality: true
  has_many :customer
end
