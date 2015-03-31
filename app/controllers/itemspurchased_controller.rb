class ItemspurchasedController < ApplicationController
  
  
  
  def index
    @itemspurchased= ItemPurchased.all
    
  end

  def show
    @itempurchased = ItemPurchased.find(params[:id])
  end

  def new
    @itempurchased = ItemPurchased.new
  end

  def create
    @itempurchased = ItemPurchased.new(itempurchased_params)
    if (@itempurchased.save)
      redirect_to@itempurchased
    else
      render :new
  
    end
    
      
  
    
 
  

  def edit
    @itempurchased = ItemPurchased.find(params[:id])
  end

  def update
    @itempurchased = ItemPurchased.find(params[:id])
    if (@itempurchased.update_attributes(itempurchased_params))
      redirect_to @itempurchased
    else
      render :edit
    end
  end
    
      
  
    
  end

  def destroy
    @itempurchased = ItemPurchased.find(params[:id])
    @itempurchased.destroy
    redirect_to root_path
  end
  
  private
  def itempurchased_params
  params.require(:itempurchased).permit(:quantity_bought, :price, :item_id, :order_id)
  end
end
