class ActivitiesController < ApplicationController
  before_action :set_category, only: [:create]
  before_action :set_activity, only: [:show, :edit, :update, :destroy]

  def index
    @activities = Activity.all
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

  def show; end

  private

  def activity_params
    params.require(:activity).permit(:name,
                                     :description,
                                     category_ids: [])
  end

  def set_activity
    @activity = Activity.find(params[:id])
  end

  def set_category
    @category = Category.new
  end
end
