class WelcomeMailer < ApplicationMailer
  def welcome_email(user)
    @user = user
    mail(to: @user.email, subject: "welcome" )
    ThreeJob.perform_at(1.minutes, @user.email)
  end
end
