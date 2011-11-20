class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      #will redirect to user's profile page once created
      redirect_to root_url, :notice => t(:signedup_flash)
    else
      #go back
      render "new"
    end
  end
end