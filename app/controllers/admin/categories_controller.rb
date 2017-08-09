class Admin::CategoriesController < Admin::ApplicationController
  before_action :set_category, only: [:show, :edit, :update, :destroy]

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      flash[:notice] = 'Category has been created.'
      redirect_to @category
    else
      flash[:alert] = 'Category has not been created.'
      render 'new'
    end
  end

  def update
    @category = Category.find(params[:id])
    if @category.update(category_params)
      flash[:notice] = 'Category has been updated.'
      redirect_to @category
    else
      flash.now[:alert] = 'Category has not been updated.'
      render 'edit'
    end
  end
  
  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    flash[:notice] = 'Category has been deleted.'
    redirect_to categories_path
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
end
