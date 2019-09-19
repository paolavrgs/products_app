module Admin
  class DashboardController < AdminController

    def index
      @products = Product.all
      @cotizations = Cotization.all
      @cotizations_count = Cotization.all.map(&:quantity).reduce(:+) || 0
      @general_counter = Product.all.sum(:stock) - @cotizations_count
    end

  end
end