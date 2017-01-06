class OrdersController < ApplicationController
  def index
    @orders = Order.all
  end

  def new
    @order = Order.new
    @meal = Meal.find(params[:meal_id])
    ##FIXME portion_remaining
    @quantity = @meal.quantity
  end

  def create
    @meal = Meal.find(params[:meal_id])

    @order = Order.new(order_params)
    # if @meal.portion_remaining >= @order.amount
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
