# frozen_string_literal: true

class HardJob
  include Sidekiq::Job

  def perform(*_args)
    # Do something
    sleep(1.minutes)
    puts 'Hello Piter this your profile. You can edit self profile'
  end
end
