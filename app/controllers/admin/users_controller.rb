class Admin::UsersController < ApplicationController
  before_filter :restrict_access
  before_filter :is_admin?

  def index
    @users = User.all
  end

  def make_admin
    @user = User.find(params[:id])
    @user.admin = true
    @user.save
    redirect_to admin_users_path
  end

end
