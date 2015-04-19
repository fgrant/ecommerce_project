class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  def products_to_add
    session[:items_bought] ||= []
    return session[:items_bought].map do |an_id|
      Item.find(an_id)
    end
  end
  helper_method :products_to_add
end
