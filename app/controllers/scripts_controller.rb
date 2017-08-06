class ScriptsController < ApplicationController

  def index
    @scripts = Script.all
  end

  def show
    @script = Script.find(params[:id])
    @tag = Tag.new
  end

  def new
    @script = Script.new
    @tag = Tag.new
  end

  def create
    @script = Script.create!(script_params)
    redirect_to script_path(@script)
  end

  def edit
    @script = Script.find(params[:id])
    @tag = Tag.new
  end

  def update
    @script = Script.find(params[:id])
    @script.update(script_params)
    redirect_to script_path(@script)
  end

  def destroy
    @script = Script.find(params[:id])
    @script.destroy
    redirect_to scripts_path
  end

  private
  def script_params
    params.require(:script).permit(:quote, :character, :show)
  end

end
