module App
  class FrontController < ::ApplicationController

    def index
      @products = Product.all
    end

    def product
      @product = Product.find(params[:product_id])
      @cotization = Cotization.new
    end
     
    private
 
    def resource_name
      :user
    end
    helper_method :resource_name
   
    def resource
      @resource ||= User.new
    end
    helper_method :resource
   
    def devise_mapping
      @devise_mapping ||= Devise.mappings[:user]
    end
    helper_method :devise_mapping
   
    def resource_class
      User
    end
    helper_method :resource_class
  end
end
