class StoreController < ApplicationController
  def index
  @items = Item.all
    
  end
  
  
  def all_products
    @items = Item.all
  end

  def contact
  end

  def about
  end

  def cats
    @items = Item.where('category_id=2')
  end

  def dogs
     @items = Item.where('category_id=1')
  end

  def small_animals
     @items = Item.where('category_id=3')
  end

  def birds
     @items = Item.where('category_id=5')
  end

  def sale
    @items = Item.where('is_on_sale = ?', true)
  end

  def new
     @items = Item.where('is_new = ?', true)
  end

  def updated
    @items = Item.where('is_upgrade = ?'. true)
  end
end
