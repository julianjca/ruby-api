class Api::V1::UsersController < ApplicationController
  # GET ALL USERS /users
  def index
    @users = User.all
    render json:@users
  end

  # Get user by ID
  def show
    puts params[:id]
    @user = User.find(params[:id])
    render json:@user
  end

  def create
    @user = User.new(username: params[:username], password: params[:password], full_name: params[:full_name], email: params[:email])
    @user.save!
  end
end
