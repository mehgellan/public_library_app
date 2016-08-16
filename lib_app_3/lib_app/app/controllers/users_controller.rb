class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    login(@user)  # from SessionsHelper
    redirect_to @user
  end

  def show
    @user = User.find_by_id(params[:id])
    def date_format
      format = "%m/%d/%Y %H:%M"
      date_format.strftime(format)
    end
  end

  private

    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :password)
    end

end
