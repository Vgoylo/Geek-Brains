# frozen_string_literal: true

class TwoJob
  include Sidekiq::Job

  def perform(user)
    sleep(1.minutes)
    puts "Bye #{user}! You deleted your self profile"
  end
end
