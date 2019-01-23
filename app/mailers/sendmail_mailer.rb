class SendmailMailer < ApplicationMailer
  def welcome_email(email)


      attachments['click here'] = File.read('/home/mobme/Downloads/doosvg')
        mail(   :to      => email,
           :subject => "Welcome"
   ) do |format|

     format.html
     puts "sent"
   end
  end
end
