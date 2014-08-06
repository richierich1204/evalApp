class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to action: "index"
    else
      render 'new'
    end
  end

  def show
    @users = User.all
    @user = User.find(params[:id])
  end

  private
    def user_params
      params.require(:user).permit(:name)
    end
end
