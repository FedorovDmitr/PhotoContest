class SessionsController < ApplicationController
  def create
    @user = User.find_or_create_from_auth_hash(auth_hash)
    if @user
      session[:user_id] = @user.id
      flash[:success] = 'Добро пожаловать!'
      redirect_to @user
    else
      flash.now[:danger] = 'Что-то пошло не так!'
      redirect_to root_url
    end
  end

  def destroy
    if current_user
      session.delete(:user_id)
      flash.now[:success] = 'До встречи!'
    end
    redirect_to root_path
  end
    
  protected
    
    def auth_hash
      request.env['omniauth.auth']
    end
end
