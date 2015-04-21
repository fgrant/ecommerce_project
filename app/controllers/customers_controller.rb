class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params)
    if @customer.save
      redirect_to @customer
    else
      render :new

    end
  end
  

  def edit
    @customer = Customer.find(params[:id])
  end

  def update
    @customer = Customer.find(params[:id])
    if @customer.update_attributes(customer_params)
      redirect_to @customer
    else
      render :edit
    end
  end
  

  def destroy
    @customer = Customer.find(params[:id])
    @customer.destroy
    redirect_to root_path
  end

  private

  def customer_params
    params.require(:customer).permit(:f_name, :l_name, :address,  :city, :country, :postal_code, :email, :province_id, :outstanding_order)
  end
end