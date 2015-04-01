class UsersController < ApplicationController
  #before_action :prevent_login_signup, only: [:new, :create]
  # before_action only: :edit do
  #   invalid_edit params[:id]
  # end
    
  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    #@user.update(profile_pic: params[:uploadcare])

    if @user.save
      session[:user_id] = @user.id
      redirect_to user_path @user, notice: "Success, your profile was created."
    else
      flash.now[:alert] = @user.errors.full_messages.join(", ")
      render :new
    end
  end

  def show
    @user = User.find(params[:id])
    @pets = @user.pets
  end

  def edit
    @user = User.find(params[:id])
    @user.update_attributes user_params
    redirect_to user_path(@user)
  end

  def destroy
    User.destroy(session[:user_id])
    session[:user_id] = nil
    flash[:notice] = "You deleted your account."
    redirect_to landingpage_path
  end

  private
  def user_params
    params.require(:user).permit(:id, :first_name, :last_name, :email, :password, :password_digest, :photo)
  end
end
