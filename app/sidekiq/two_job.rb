class TwoJob
  include Sidekiq::Job

  def perform(*args)
    sleep(1.minutes)
    puts 'Bye Piter! Yuo delete self profile'
  end
end