# frozen_string_literal: true

class HardJob
  include Sidekiq::Job

  def perform(user)
    # Do something
    #sleep(1.minutes)
    puts "Hello #{user} this your profile. You can edit self profile"
  end
end
