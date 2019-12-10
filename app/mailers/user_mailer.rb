class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #
  def daily_alerts
    @user = User.includes(contacts: :alerts).
              where(alerts: { datetime: Date.today }).
              find(params[:user_id])

    mail(to: @user.email, subject: 'Rappel du jour')
  end
end

