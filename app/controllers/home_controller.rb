class HomeController < ApplicationController
  def index
    if current_user
      @name = current_user.name
      render 'index.html.erb'
    else
      flash[:warning] = 'Login please'
      redirect_to '/login'
    end
  end
end
