# Preview all emails at http://ec7646823d7740ee8d2e51e823796045.vfs.cloud9.ap-northeast-1.amazonaws.com/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at http://ec7646823d7740ee8d2e51e823796045.vfs.cloud9.ap-northeast-1.amazonaws.com/rails/mailers/user_mailer/account_activation
  def account_activation
    user = User.first
    user.activation_token = User.new_token
    UserMailer.account_activation(user)
  end

  # Preview this email at http://ec7646823d7740ee8d2e51e823796045.vfs.cloud9.ap-northeast-1.amazonaws.com/rails/mailers/user_mailer/password_reset
  def password_reset
    UserMailer.password_reset
  end

end
