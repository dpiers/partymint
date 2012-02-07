class UsersController < ApplicationController
  before_filter :authenticate_user!

  def index
    @users = User.all  
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    @user.save
    respond_with @user
  end

  def show
    @user = User.find(params[:id])
  end
end
