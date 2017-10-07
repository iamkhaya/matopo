class ActivitiesController < ApplicationController
  before_action :set_category, only: [:create]
  before_action :set_activity, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  def index
    @activities = Activity.all
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
