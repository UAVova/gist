class UsersController < ApplicationController

  def index
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to root_url
    else
      render :new
    end
  end

  def snippets
    user = User.find(params[:id])
    @snippets = user.snippets.page(params[:page])
    flash.now[:info] = "#{user.username.capitalize} snippets!"
    render 'pages/index'
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation, :email)
  end

end
