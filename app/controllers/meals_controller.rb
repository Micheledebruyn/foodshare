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
    @meal.save!
    redirect_to meals_path
  end

  def edit
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
