class CategoryController< ApplicationController
  def create
  end

  def index
  end

  def new
  end

  def show
  end
end


  
  
  
  def index
    @categories = Category.all
    
  end

  def show
    @category = Category.find(params[:id])
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if (@category.save)
      redirect_to@category
    else
      render :new
  
    end
  end
    
    
    
    

   
  
    
 
  

 
  
    
      
  
    
  

 
  
  private
  def category_params
  params.require(:category).permit(:name, :description )
  end


