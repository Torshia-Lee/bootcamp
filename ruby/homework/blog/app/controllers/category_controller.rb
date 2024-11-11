class CategoryController < ApplicationController
    def index
        @categories = Category.all
    end

    def show
        @category = Category.find(params[:id])
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


    def edit
      @category = Category.find(params[:id])
    end
  
    def update
      @category = Category.find(params[:id])
  
      if @category.update(article_params)
        redirect_to @category
      else
        render :edit, status: :unprocessable_entity
      end
    end
    
    
    
    def destroy
      @article = Article.find(params[:id])
      @article.destroy
  
      redirect_to root_path, status: :see_other
    end

    
    private
      def category_params
        params.expect(category: [:name, :description])
      end



    end




end
