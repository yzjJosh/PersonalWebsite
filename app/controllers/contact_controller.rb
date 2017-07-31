class ContactController < ApplicationController
  before_action :store_return_to

  def show
    @person = Person.all[0]
  end

  def show_success
    @person = Person.all[0]
  end

  def send_email
    message = Message.new
    message.sender = params[:name]
    message.email = params[:email]
    message.message = params[:message]
    message.ip = request.remote_ip
    message.save
    ContactMailer.email(message).deliver_later 
    redirect_to :action => :show_success
  end
end
