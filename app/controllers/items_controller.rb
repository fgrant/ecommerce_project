class ItemsController < ApplicationController
 
  def index
    @items = Item.all
    @items = Item.order("name").page(params[:page]).per(5)
  
    
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if (@item.save)
      redirect_to@item
    else
      render :new
  
    end
    
      
  
    
 
  

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    if (@item.update_attributes(item_params))
      redirect_to @item
    else
      render :edit
    end
  end
    
      
  
    
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to root_path
  end
  
  
  def search
            
    
  end
  
  def search_results
    @items = Item.where("name LIKE ?", "%#{params[:keywords]}%")
  end
  
  
  private
  def item_params
  params.require(:item).permit(:name,  :description, :price, :quantity_on_hand, :is_new, :is_on_sale, :is_upgrade, :picture, :category_id)
  end
end
