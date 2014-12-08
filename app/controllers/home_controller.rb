class HomeController < ApplicationController
  def index
  end
  def sign_up
    @user = User.new
  end
end
