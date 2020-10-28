class UsersController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
    @foods = current_user.foods.where("created_at > ?", Date.today)
    @motions = current_user.motions.where("created_at > ?", Date.today)
  end

  def new
    @food = Food.new
  end

  def show
    #from = Time.current.at_beginning_of_day
    #to = (from + 6.day).at_end_of_day
    @food = current_user.foods.where(created_at: 1.week.ago.beginning_of_day..Time.zone.now.end_of_day)

    #@food = current_user.foods.limit(7).order(:start_time)
    #@food = current_user.foods.where(created_at: from...to)
  end

  def edit
    @foods = current_user.foods
  end
end
