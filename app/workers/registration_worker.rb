class RegistrationWorker
  include Sidekiq::Worker
    sidekiq_options queue: 'critical'

  def perform(email)
    puts "first worker"
     MailerJob.perform_now(email)
   end
end
