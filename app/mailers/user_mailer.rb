class UserMailer < ActionMailer::Base
  default from: "notifications@pintrance.com"

  def welcome_email(user)
    @user = user
    @url = 'http://pintrance.com/users/sign_in'
    mail(to: @user.email, subject: 'Welcome to PinTrance!')
  end
end
