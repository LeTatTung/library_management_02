class UsersController < ApplicationController
  before_action :find_user, only: [:show]

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      flash[:success] =  t "users.register.success"
      redirect_to @user
    else
      render :new
    end
  end

  private
  def user_params
    params.require(:user).permit :name, :email, :password, :password_confirmation
  end

  def find_user
    @user = User.find_by id: params[:id]
    unless @user
      flash[:danger] = t "users.not_found"
      redirect_to root_url
    end
  end
end
