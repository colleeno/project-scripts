class StarsController < ApplicationController
before_action :authenticate_user!

  def index
    @stars = Star.all
  end

end
