class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :user

  private

  # Get current user, or nil if user is not logged in 
  def user 
    @user ||= session[:user_id] && User.find(session[:user_id]) 
  end

  # Render a login page if user is not logged in 
  def require_login
    if not user
      redirect_to :controller => :login, :action => :show
    end
  end

  # Store the return_to url
  def store_return_to
    session[:return_to] = request.url
  end

  # Redirect to the url in return_to or to a default page ("/")
  def redirect_back_or_default
    redirect_to (session[:return_to] || "/")
  end

  def verify_recaptcha_response(token, remoteip)
    response = RestClient.post 'https://www.google.com/recaptcha/api/siteverify', { :secret => ENV['RECAPTCHA_SECRET_KEY'], :response => token, :remoteip => remoteip}      
    logger.info "Response for recaptcha verification:"
    logger.info response
    if response.code != 200
      return false
    end
    body = JSON.parse response.body
    return body['success']
  end
end
