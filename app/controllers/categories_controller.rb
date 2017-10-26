class CategoriesController < ApplicationController
  before_action :set_category, only: %i[show edit update destroy]
  before_action :authenticate_user!
  layout :layout_by_resource

  def index
    @categories = Category.all
  end

  def edit
    @category = Category.find(params[:id])
  end

  def show
    @category = Category.find(params[:id])
  end

  private

  def category_params
    params.require(:category).permit(:name, :description)
  end

  def set_category
    @category = Category.find(params[:id])
  rescue ActiveRecord::RecordNotFound
    flash[:alert] = 'The category you were looking for could not be found.'
    redirect_to categories_path
  end

  def layout_by_resource
    if devise_controller?
      'devise'
    else
      'application'
    end
  end
end
