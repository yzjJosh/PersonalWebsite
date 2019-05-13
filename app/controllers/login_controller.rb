class LoginController < ApplicationController
  def show
      if user
        # If already logged in, ignore this request
        redirect_back_or_default
      end
  end

  def login
    begin
      params.require [:name, :password, 'g-recaptcha-response']
    rescue ActionController::ParameterMissing => e
      logger.error e
      redirect_to :action => :show
      return
    end
    if not verify_recaptcha_response params['g-recaptcha-response'], request.remote_ip
      redirect_to :action => :show
      return
    end
    if user
      # If already logged in, ignore this request
      redirect_back_or_default
      return
    end
    matched_user = User.find_by(name: params[:name])
    if matched_user and matched_user.password == params[:password]
      @user = matched_user
      session[:user_id] = matched_user.id  
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
