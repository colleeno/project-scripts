class ScriptsController < ApplicationController
before_action :authenticate_user!, only: [:new, :add_star, :remove_star]

  def index
    @category = Script.find(params[:category_id])
    @scripts = Script.order("created_at DESC")
  end

  def new
    @category = Category.find_by_name(params[:category_id])
    @script = @category.scripts.new
  end

  def create
    @category = Category.find_by_name(params[:category_id])
    @script = @category.scripts.new(script_params.merge(user: current_user))
    if @script.save
      flash[:notice] = "Quote added"
      redirect_to category_path(@category)
    else
      render :new
    end
  end

  def show
    @category = Category.find_by_name(params[:category_id])
    @script = Script.find(params[:id])
  end

  def edit
    @category = Category.find_by_name(params[:category_id])
    @script = Script.find(params[:id])
  end

  def update
    @category = Category.find_by_name(params[:category_id])
    @script = Script.find(params[:id])
    if @script.user == current_user
      @script.update(script_params)
      flash[:notice] = "Quote updated"
    else
      flash[:alert] = "Only the creator of the quote can update"
    end
    redirect_to category_script_path(@category, @script)
  end

  def destroy
    @category = Category.find_by_name(params[:category_id])
    @script = Script.find(params[:id])
      if @script.user == current_user
        @script.destroy
        flash[:alert] = "Quote deleted"
      else
        flash[:alert] = "Only the creator of the quote can delete"
      end
    redirect_to category_path(@category)
  end

  def add_star
    @category = Category.find_by_name(params[:category_id])
    @script = Script.find(params[:id])
    @script.stars.create(user: current_user)
    redirect_to category_script_path(@category, @script)
  end

  def remove_star
    @script = Script.find(params[:id])
    @script.stars.find_by(user: current_user).destroy
    redirect_back(fallback_location: root_path)
  end

  private
  def script_params
    params.require(:script).permit(:quote, :character, :show)
  end

end
