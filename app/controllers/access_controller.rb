class AccessController < ApplicationController

  def home_page
  end

  def about
  end

  def tips
  end

  def attempt_login
    if params[:email].present? && params[:password].present?
      found_user = User.where(email: params[:email]).first
      if found_user
        authorized_user = found_user.authenticate(params[:password])
        if authorized_user
          session[:user_id] = found_user.id
          # redirect_to "/users/#{found_user.id.to_s}", notice: "You are logged in"
          redirect_to :back, notice: "You are logged in"
        else
          redirect_to :back, notice: "Incorrect email or password"
        end
      else
        redirect_to :back, notice: "Incorrect email or password"
      end
    else
      redirect_to :back, notice: "Please enter email and password."
    end
  end

  def logout
    session[:user_id] = nil
    flash[:notice] = "You have logged out"
    redirect_to "/"
  end

  private 

  def user_params
    params.require(:user).permit(:email, :password, :password_digest)
  end

end
