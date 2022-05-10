class Admin::DashboardController < ApplicationController

  http_basic_authenticate_with name: ENV['USERNAME'], password: ENV['PASSWORD']

  def show
    @total_quantity = Product.sum(:quantity)
    @number_categories = Category.distinct.count(:name)
  end
end
