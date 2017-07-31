class ContactMailer < ApplicationMailer
  default from: 'notification@zijiangyang.com' 

  def email(message) 
    @message = message
    @person = Person.all[0]
    subject = "New message from #{@message.sender} (#{@message.email})"
    mail(to: @person.email, subject: subject)        
  end
end
