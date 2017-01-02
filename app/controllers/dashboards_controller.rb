class DashboardsController < ApplicationController
  def show
    @meals = current_user.meals
    @purchases = Customer.where(user: current_user)
  end
end
