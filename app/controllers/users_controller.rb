class UsersController < ApplicationController
  
  before_action :require_login 
  skip_before_action :require_login, only: [:new, :create] 

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render :new
    end
  end

  def home
  end

  def show
  end

  def edit
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end

    def current_user
      @current_user ||= User.find_by(id: session[:user_id])
    end
end
