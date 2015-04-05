class Customer < ActiveRecord::Base
  validates :f_name, :l_name,:address, :city, :country,:postal_code,:province_id, presence:true
  validates :province_id, numericality: {only_integer:true }
  belongs_to:province
  has_many:order
  
end
