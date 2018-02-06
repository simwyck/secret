class UsersController < ApplicationController

  def home
  end

  def index
    #@users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
   if @user.save
     log_in @user
     flash[:success] = "Welcome to the Secret App!"
     redirect_to @user
   else
     render 'new'
   end
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    flash[:success] = "Profile successfully deleted!"
    redirect_to root_path
  end

  def univers
    if !logged_in?
      redirect_to root_path
    end

  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

end
