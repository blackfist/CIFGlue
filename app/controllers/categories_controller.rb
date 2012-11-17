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
          redirect_to categories_path, notice: 'Category ' + @category.name + ' was successfully created.'
      else
          redirect_to new_category_path, alert: @category.name + ': ' + @category.errors.full_messages.to_sentence.split('^').last
      end
  end
end
