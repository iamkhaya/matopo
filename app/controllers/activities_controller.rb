class ActivitiesController < ApplicationController
  before_action :set_category, only: [:create]
  before_action :set_activity, only: %i[show edit update destroy]
  before_action :authenticate_user!
  layout :layout_by_resource

  def index
    @activities = Activity.paginate(page: params[:page], per_page: 10)
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

  def layout_by_resource
    if devise_controller?
      'devise'
    else
      'application'
    end
  end
end
