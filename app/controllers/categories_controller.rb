class CategoriesController < ApplicationController
  def new
      @category = Category.new
  end

  def create
      @category = Category.new(params[:category])
      if @category.save
          redirect_to categories_path, :notice => 'Category ' + @category.name + '  was successfully created.'
      else
          redirect_to new_category_path, :alert => @category.name + ': ' + @category.errors.full_messages.to_sentence.split('^').last
      end
  end

  def index
      @categories = Category.all
  end

  def edit
      @category = Category.find(params[:id])
  end

  def update
      @category = Category.find(params[:id])

      respond_to do |format|
          if @category.update_attributes(params[:category])
              format.html { redirect_to categories_path, notice: 'Category was successfully updated.' }
              format.json { head :no_content }
          else
              format.html { render action: "edit", warning: @category.errors }
              format.json { render json: @category.errors, status: :unprocessable_entity }
          end
      end
  end

  def destroy
     @category = Category.find(params[:id])
     @category.destroy
     respond_to do |format|
        format.html { redirect_to categories_url }
        format.json { head :no_content }
     end 
  end

end
