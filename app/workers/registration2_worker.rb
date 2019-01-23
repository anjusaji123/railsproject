class Registration2Worker
  include Sidekiq::Worker
    sidekiq_options queue: 'default'



  def perform(email)
    puts "second worker"
     MailerJob.perform_now(email)
  end
end
