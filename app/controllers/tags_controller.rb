class TagsController < ApplicationController
  def new
    @script = Script.find(params[:script_id])
    @tag = @script.tags.new
  end

  def create
    @script = Script.find(params[:script_id])
    @category = Category.find_by(name: params[:category_name])

    existing_tag = Tag.find_by(script: @script, category: @category)
    unless existing_tag
      @script.tags.create(category: @category)
    end
    redirect_to script_path(@script)
  end

end
