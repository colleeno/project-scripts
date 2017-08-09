class UsersController < ApplicationController
before_action :authenticate_user!

  def index
    @users = User.all
    @scripts = current_user.scripts
  end

end
