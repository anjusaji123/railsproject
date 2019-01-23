class MailerJob < ApplicationJob
  queue_as :queue

  def perform(email)
   SendmailMailer.welcome_email(email).deliver_now
    # SendmailMailer.deliver.welcome_email(email)
  end
end
