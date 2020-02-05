class UserMailer < ApplicationMailer
  def send_email(user, tvshow)
    @user = user
    @tv_show = tvshow
    mail(to: @user.email, subject: 'Reminder for your favorite show!')
  end
end
