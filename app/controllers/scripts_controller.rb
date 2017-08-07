class ScriptsController < ApplicationController

  def index
    @category = Script.find(params[:category_id])
    @scripts = Script.all
  end

  def new
    @category = Category.find(params[:category_id])
    @script = @category.scripts.new
  end

  def create
    @category = Category.find(params[:category_id])
    @script = @category.scripts.create!(script_params)
    redirect_to category_path(@category)
  end

  def show
    @category = Category.find(params[:category_id])
    @script = Script.find(params[:id])
  end

  def edit
    @category = Category.find(params[:category_id])
    @script = Script.find(params[:id])
  end

  def update
    @category = Category.find(params[:category_id])
    @script = Script.find(params[:id])
    @script.update(script_params)
    redirect_to category_script_path(@category, @script)
  end

  def destroy
    @category = Category.find(params[:category_id])
    @script = Script.find(params[:id])
    @script.destroy
    redirect_to category_path(@category)
  end

  private
  def script_params
    params.require(:script).permit(:quote, :character, :show)
  end

end
