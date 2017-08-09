class StarsController < ApplicationController
before_action :authenticate_user!

  def index
    @stars = current_user.stars
  end

end
