class UsersController < ApplicationController
  def show
    @food = current_user.foods
  end

  def index
    @food = current_user.foods.where("created_at > ?", Date.today)
  end
end
