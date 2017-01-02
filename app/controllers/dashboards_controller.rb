class DashboardsController < ApplicationController
  def show
    @meals = current_user.meals
  end
end
