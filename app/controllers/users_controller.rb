class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def create
    @user = User.new(params[:name])
    if @user.save
      # Handle a successful save.
    else
      render 'new'
    end
  end

  def show
    @user = User.find(params[:id])
  end
end
