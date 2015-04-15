class ContactController < ApplicationController
  
    
   def index
    @contact= Contact.all
   end

  def show
    @contact= Contact.find(params[:id])
  end


  
  
  

  
  
  
  
  private
  def contact_params
  params.require(:contact).permit(:email,  :web, :phone, :address)
  end
end
