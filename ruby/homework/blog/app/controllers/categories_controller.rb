class CategoriesController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  
  def index
    @categories = Category.includes(:articles).all
  end

  def show
    @category = Category.find(params[:id])
    @articles = @category.articles
  end

  def new
    @category = Category.new
  end
  
  def create
    @category = Category.new(category_params)

    if @category.save
      redirect_to @category
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @category = Category.find(params[:id])
  end
  
  def update
    @category = Category.find(params[:id])

    if @category.update(category_params)  # Use category_params here, not article_params
      redirect_to @category
    else
      render :edit, status: :unprocessable_entity
    end
  end
  
  def destroy
    @category = Category.find(params[:id])  # Fix: Delete category, not article
    @category.destroy

    redirect_to categories_path, status: :see_other  # Redirect to categories path after delete
  end
  
  private

  def category_params
    params.require(:category).permit(:name, :description, :Priority_Level)
  end
end

