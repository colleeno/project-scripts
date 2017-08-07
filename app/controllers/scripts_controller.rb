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
    @script = @category.scripts.new(script_params)
    if @script.save
      flash[:notice] = "Quote added"
      redirect_to category_path(@category)
    else
      render :new
    end
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
    flash[:notice] = "Quote updated"
    redirect_to category_script_path(@category, @script)
  end

  def destroy
    @category = Category.find(params[:category_id])
    @script = Script.find(params[:id])
    @script.destroy
    flash[:alert] = "Quote deleted"
    redirect_to category_path(@category)
  end

  private
  def script_params
    params.require(:script).permit(:quote, :character, :show)
  end

end
