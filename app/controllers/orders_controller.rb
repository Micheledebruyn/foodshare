class OrdersController < ApplicationController
  before_action :find_meal, only: [:new, :create]

  def index
    @orders = Order.all
  end

  def new
    @order = Order.new
    ## FIX ME portion_remaining
    @quantity = @meal.quantity
  end

  def create
    @order = Order.new(order_params)
    if @order.amount <= @meal.portion_remaining
      @customer = Customer.create!(user: current_user, meal: @meal)
      @order.customer_id = @customer.id
      @meal.update(portion_remaining: (@meal.portion_remaining - @order.amount))
      if @order.save!
        redirect_to dashboard_path
      else
        render :new
      end
    else
      flash[:alert] = "The meal has just sold out.. Sorry!"
    end
  end

  def accept
  end

  def decline
  end

  private

  def find_meal
    @meal = Meal.find(params[:meal_id])
  end


  def order_params
    params.require(:order).permit(:amount, :message)
  end
end
