# frozen_string_literal: true

class TwoJob
  include Sidekiq::Job

  def perform(*_args)
    sleep(1.minutes)
    puts 'Bye Peter! You delete self profile'
  end
end
