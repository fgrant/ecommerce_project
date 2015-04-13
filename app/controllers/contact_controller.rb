class ContactController < ApplicationController
  def index
  end

  def show
  end

  private

  def item_params
    params.require(:contact).permit(:email,  :web, :phone, :address)
  end
end
