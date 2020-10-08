class FoodsController < ApplicationController
  before_action :authenticate_user!, except: [:index]

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
    @food = Food.find(params[:id])
  end

  def search
    @food = Food.search(params[:keyword])
  end

  private

  def food_params
    params.require(:food).permit(:name, :kcal, :money, :note, :start_time, :image).merge(user_id: current_user.id)
  end
end
