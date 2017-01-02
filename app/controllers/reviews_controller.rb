class ReviewsController < ApplicationController
  def index
    # @reviews = Review.where(m
  end

  def new
    @review = Review.new
    @meal = Meal.find(params[:meal_id])
  end

  def create
    @review = Review.new(review_params)
    @meal = Meal.find(params[:meal_id])
    @review.meal_id = @meal.id
    if @review.save!
      redirect_to meal_path(@meal)
    else
      render :new
    end
  end

  private
  def review_params
    params.require(:review).permit(:content, :stars)
  end
end
