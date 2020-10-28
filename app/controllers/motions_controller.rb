class MotionsController < ApplicationController
  def new
    @motion = Motion.new
  end

  def create
    @motion = Motion.create(motion_params)
    if @motion.save
      redirect_to users_path(current_user)
    else
      render :new
    end
  end

  private

  def motion_params
    params.require(:motion).permit(:name, :time, :kcal).merge(user_id: current_user.id)
  end
end
