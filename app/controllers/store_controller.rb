class StoreController < ApplicationController
  def index
    @items = Item.all
    

  end

  def all_products
    @items = Item.all
  end
  def show
  end
  

  #def all_abouts
   # @abouts = About.all
   #@about.first
  #end
  
  def contact
    @contacts = Contact.all
  end
  
  def add_to_cart
    session[:items_bought] ||=[]
    session[:items_bought] << params[:id].to_i
    session[:items_bought].uniq!
    redirect_to :back
  end
  
  def clear_cart
    session[:items_bought] = nil
    redirect_to :back 
  end
  
  def about
   @abouts = About.all
  #@about = About.first
  end

  def cats
    @items = Item.where('category_id=2').order(name: :asc)
  end

  def dogs
    @items = Item.where('category_id=1').order(name: :asc)
  end

  def small_animals
    @items = Item.where('category_id=3').order(name: :asc)
  end

  def birds
    @items = Item.where('category_id=5').order(name: :asc)
  end

  def sale
    @items = Item.where('is_on_sale = ?', true).order(name: :asc)
    
  end

  def new
    @items = Item.where('is_new = ? ', true).order(created_at: :desc)
  end

  def updated
    @items = Item.where('is_upgrade = ?', true).order(name:asc)
  end

  def search_items
  end

  def found_items
   # if params[:category_id] = "0" then
     #@items = Item.where('name LIKE ?', '%' + params[:search_words] + '%')
    
 # else
  #
  @items = Item.where('name LIKE ?', '%' + params[:search_words] + '%').where('category_id LIKE ? ', params[:category_id]).order(name: :asc)
     
    
      
  #  end
      
  end

  def found_all_items
    @items = Item.where('name LIKE ?', '%' + params[:search_words] + '%').order(name: :asc)
   
  end
end
