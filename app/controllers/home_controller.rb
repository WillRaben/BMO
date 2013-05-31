class HomeController < ApplicationController
  helper :DemosHelper
  def index
    @users = User.all
  end
end
