class UsersController < ApplicationController
  def index
    @food = current_user.foods.where("created_at > ?", Date.today)
    @foods = current_user.foods
  end

  def show
    @foods = current_user.foods
  end

  def edit
    @foods = current_user.foods
  end
end
