class LoginController < ApplicationController
  def show
      if user
        # If already logged in, ignore this request
        redirect_back_or_default
      end
  end

  def login
    if user
      # If already logged in, ignore this request
      redirect_back_or_default
    end
    user = User.find_by(name: params[:name])
    if user.password == params[:password]
      @user = user
      session[:user_id] = user.id  
      redirect_back_or_default
    else
      redirect_to :action => :show
    end
  end
  
  def logout
    session[:user_id] = nil
    redirect_back_or_default
  end
end
