class UsersController < ApplicationController
  def new
  end
  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      passowrd: params[:password],
      password_confirmation: params[:passowrd_confirmation]
    )
    if user.save
      session[:user_id] = user_id
      flash[:success] = "Success"
      redirect_to '/'
    else
      flash[:warning] = "warn"
      redirect_to '/signup'
    end
  end
end
