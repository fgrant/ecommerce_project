class ContactController < ApplicationController
  
    
   def index
    @contact= Contact.all
   end

  def show
    @contact= Contact.find(params[:id])
  end


  
  

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      redirect_to @contact
    else
      render :new

    end

    def edit
      @contact = Contact.find(params[:id])
    end

    def update
      @contact = Contact.find(params[:id])
      if @contact.update_attributes(contact_params)
        redirect_to @contact
      else
        render :edit
      end
    end
  end

  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy
    redirect_to root_path
  end

  


  
  private
  def contact_params
  params.require(:contact).permit(:email,  :web, :phone, :address)
  end
end
