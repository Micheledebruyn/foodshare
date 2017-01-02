class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def new
    @order = Order.new
    @meal = Meal.find(params[:meal_id])
    @quantity = @meal.quantity
  end

  def create
    @order = Order.new(order_params)
    @meal = Meal.find(params[:meal_id])
    @customer = Customer.create!(user: current_user, meal: @meal)
    @order.customer_id = @customer.id
    if @order.save!
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def accept
  end

  def decline
  end

  private

  def order_params
    params.require(:order).permit(:amount, :message)
  end
end
