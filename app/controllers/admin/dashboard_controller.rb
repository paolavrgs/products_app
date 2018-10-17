module Admin
  class DashboardController < AdminController

    def index
      @products = Product.all
      @cotizations_count = Cotization.all.map(&:quantity).reduce(:+)
      @general_counter = Product.all.sum(:stock) - @cotizations_count
    end

  end
end