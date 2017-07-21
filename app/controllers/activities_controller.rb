class ActivitiesController < ApplicationController
  before_action :set_category
  before_action :set_activity, only: [:show, :edit, :update, :destroy]

  def index
    @activities = Activity.all
  end

  def new
    @activity = @category.activities.build
  end

  def create
    @activity = @category.activities.build(activity_params)
    #binding.pry
    if @activity.save!
      flash[:notice] = 'Activity has been created.'
      redirect_to [@category, @activity]
    else
      flash.now[:alert] = 'Activity has not been created.'
      render 'new'
    end
  end

  def edit
    @activity = Activity.find(params[:id])
  end

  def update
    if @activity.update(activity_params)
      flash[:notice] = 'Activity has been updated.'
      redirect_to [@category, @activity]
    else
      flash.now[:alert] = 'Activity has not been updated.'
      render 'edit'
    end
  end

  def destroy
    @activity.destroy
    flash[:notice] = 'Activity has been deleted.'
    redirect_to @category
  end

  def show; end

  private

  def activity_params
    params.require(:activity).permit(:name, :description)
  end

  def set_activity
    @activity = @category.activities.find(params[:id])
  end

  def set_category
    @category = Category.find(params[:category_id])
  end
end
