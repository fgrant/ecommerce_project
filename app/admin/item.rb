ActiveAdmin.register Item do

  permit_params :name, :price, :quantity_on_hand, :is_new, :is_on_sale, :is_upgrade, :picture, :category_id
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
   #  permitted = [:name, :price]
  #   permitted << :other if resource.something?
  #   permitted
 # end


end

