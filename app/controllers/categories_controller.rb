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

  def destroy 
      @category = Category.find(params[:id])

      if @category.destroy
          redirect_to categories_path, notice: 'Category ' + @category.name + ' was deleted successfully.'
      else
          redirect_to categories_path, alert: @category.name + ': ' + @category.errors.full_messages.to_sentence.split('^').last
      end
  end

  def edit
      @category = Category.find(params[:id])
  end

  def update
      @category = Category.find(params[:id])

      if @category.update_attributes(params[:category])
          redirect_to categories_path, notice: 'Category ' + @category.name + ' was edited successfully.'
      else
          redirect_to edit_category_path(params[:id]), alert: @category.name + ': ' + @category.errors.full_messages.to_sentence.split('^').last
      end
  end
end
