class ItemPurchased < ActiveRecord::Base
  validates :quantity_bought,  presence:true
  validates :quantity_bought, numericality: {only_integer:true }
  
  belongs_to:item
  belongs_to:order
end
