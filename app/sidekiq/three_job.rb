# frozen_string_literal: true

class ThreeJob
  include Sidekiq::Job

  def perform(user)
    # Do something
    #sleep(1.minutes)
    puts "Hello #{user} your was delivered sms"
  end
end