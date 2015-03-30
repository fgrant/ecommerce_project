class Item < ActiveRecord::Base
  validates :name, presence:true
  validates :quantity_on_hand, numericality: {only_integer:true }

  has_many:item_purchased
  mount_uploader :picture,ItemPictureUploader
end
