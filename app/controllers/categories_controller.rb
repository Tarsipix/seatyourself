class CategoriesController < ApplicationController
  def show
  end

  def new
  end

  def edit
  end

  def destroy
  end

  private
  def category_params
    params.require(:restaurant).permit(:name)
  end  
end
