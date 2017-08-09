class UsersController < ApplicationController
before_action :authenticate_user!

  def index
    @users = User.all
    @scripts = current_user.scripts.order("created_at DESC")
  end

end
