class FoodsController < ApplicationController
  def create
    Food.create(food_params)
  end

  private

  def food_params
    params.require(:food).permit(:name, :kcal, :money, :note).merge(user_id: current_user.id)
  end
end
