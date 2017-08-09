class Admin::ActivitiesController < Admin::ApplicationController
  before_action :set_category, only: [:create]
  before_action :set_activity, only: [:show, :edit, :update, :destroy]

  def new
    @activity = Activity.new
  end

  def create
    @activity = @category.activities.build(activity_params)
    if @activity.save
      flash[:notice] = 'Activity has been created.'
      redirect_to activity_path(@activity)
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
    if @activity.destroy
      flash[:notice] = 'Activity has been deleted.'
      redirect_to @activity
    else
      flash.now[:alert] = 'Activity has not been deleted.'
      redirect_to activities_path
    end
  end

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
