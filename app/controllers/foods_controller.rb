class FoodsController < ApplicationController
  def index
    @foods = Food.all
  end

  def new
    @food = Food.new
  end

  def create
    @food = Food.create(food_params)
    if @food.save
      redirect_to users_path(current_user)
    else
      render :new
    end
  end

  def show
    @foods = current_user.foods
  end

  private

  def food_params
    params.require(:food).permit(:name, :kcal, :money, :note, :start_time).merge(user_id: current_user.id)
  end
end
