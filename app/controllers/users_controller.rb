class UsersController < ApplicationController
  def index
    #@food = Food.all.where("created_at > ?", Date.today)

    #@food = current_user.foods.where("created_at > ?", Date.today)
    @foods = current_user.foods.where("created_at > ?", Date.today)
  end

  def show
    @food = current_user.foods.limit(7)
    #@food = current_user.foods.order(start_time: :desc).limit(7)
  end

  def edit
    #@food = Food.all
    @foods = current_user.foods
  end
end
