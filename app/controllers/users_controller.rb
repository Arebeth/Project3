class UsersController < ApplicationController
  def new
    @user = User.create
  end

  def show
  end

  def edit
  end
end
