class ContactController < ApplicationController
  before_action :store_return_to

  def show
    @person = Person.all[0]
  end

  def show_success
    @person = Person.all[0]
  end

  def show_failure
    @person = Person.all[0]
  end

  def send_email
    MessageBlocker.all.each do |blocker|
      if Regexp.new(blocker.name_matcher).match(params[:name]) != nil and Regexp.new(blocker.email_matcher).match(params[:email]) != nil and Regexp.new(blocker.ip_matcher).match(request.remote_ip) != nil and Regexp.new(blocker.message_matcher).match(params[:message]) != nil
        blocker.triggered_times = blocker.triggered_times + 1 
        blocker.save
        redirect_to :action => :show_failure
        return
      end
    end
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
