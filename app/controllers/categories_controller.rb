class CategoriesController < ApplicationController

  def index
      @categories = Category.all
  end

  def show
      @categories = Category.all
      @category = Category.find_by_name(params[:id])
      @scripts = @category.scripts
      @scripts.order("created_at ASC")
  end

end
