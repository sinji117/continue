class UsersController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    @foods = current_user.foods.where("created_at > ?", Date.today)
  end

  def show
    @food = current_user.foods.limit(7)
  end

  def edit
    @foods = current_user.foods
  end
end
