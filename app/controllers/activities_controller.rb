class ActivitiesController < ApplicationController
  def index
  end

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.new(activity_params)
    if @activity.save
      flash[:notice] = "Activity has been created."
      redirect_to @activity
    else
      flash.now[:alert] = "Activity has not been created."
      render "new"
    end
  end

  def show
    @activity = Activity.find(params[:id])
  end
end

private
def activity_params
  params.require(:activity).permit(:name, :description, :category)
end
