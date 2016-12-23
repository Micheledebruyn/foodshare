class MealsController < ApplicationController
  def index
    @meals = Meal.all
  end

  def show
    @meal = Meal.find(params[:id])
  end

  def new
    @meal = Meal.new
  end

  def create
    @meal = Meal.new(meal_params)
    @meal.creator_id = current_user.id
    @meal.save!
    redirect_to meals_path
  end


  private

  def meal_params
    params.require(:meal).permit(:title, :description, :quantity, :start_date, :end_date)
  end
end
