class ScriptsController < ApplicationController

  def index
    @scripts = Script.all
  end

  def show
    @script = Script.find(params[:id])
  end

  def edit
  end

  def new
    @script = Script.new
  end

  def create
  end

  def destroy
  end

  private
  def script_params
    params.require(:script).permit(:quote, :character, :show)
  end

end
