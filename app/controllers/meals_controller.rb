class MealsController < ApplicationController
  before_action :find_meal, only: [:show, :edit, :update]

  def index
    @meals = Meal.all
  end

  def show
  end

  def new
    @meal = Meal.new
  end

  def create
    @meal = Meal.new(meal_params)
    @meal.creator_id = current_user.id
    @meal.portion_remaining = @meal.quantity
    @meal.save!
    redirect_to meals_path
  end

  def edit
    unless @meal.customers.empty?
      flash[:alert] = "Sorry, it\'s not possible to editg the meal, since it has already been ordered"
      redirect_to dashboard_path
    end
  end

  def update
    if @meal.update(meal_params)
      redirect_to meal_path(@meal)
    else
      render :edit
    end
  end

  private

  def find_meal
    @meal = Meal.find(params[:id])
  end

  def meal_params
    params.require(:meal).permit(:title, :description, :quantity, :start_date, :end_date, photos: [])
  end
end
