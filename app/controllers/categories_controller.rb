class CategoriesController < ApplicationController
  def new
      @category = Category.new
  end

  def index
      @categories = Category.all
  end

  def create
      @category = Category.new(params[:category])

      if @category.save
          redirect_to categories_path
      else
          redirect_to new_category_path
      end
  end
end
