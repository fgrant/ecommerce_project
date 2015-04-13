class ProvincesController < ApplicationController
  def index
    @provinces = Province.all
  end

  def destroy
    @province = Province.find(params[:id])
    @province.destroy
    redirect_to root_path
    end

  def search
  end

  def search_results
    @items = Item.where('name LIKE ?', "%#{params[:keywords]}%")
  end

  def show
    @province = Province.find(params[:id])
  end

  def new
    @province = Province.new
  end

  def create
    @province = Province.new(province_params)
    if @province.save
      redirect_to @province
    else
      render :new

    end
  end

  def edit
    @province = Province.find(params[:id])
  end

  def update
    @province = Province.find(params[:id])
    if @province.update_attributes(province_params)
      redirect_to @province
    else
      render :edit
    end
  end

  def destroy
    @province = Province.find(params[:id])
    @province.destroy
    redirect_to root_path
  end

  private

  def province_params
    params.require(:province).permit(:prov_name, :pst_rate, :gst_rate, :hst_rate)
  end
end
