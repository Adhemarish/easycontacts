class AlertsMailService
  def call
    users_to_alert = User.distinct.
                     joins(contacts: :alerts).
                     where(alerts: { datetime: Date.today }).
                     pluck(:id)
    users_to_alert.each do |user_to_alert_id|
      UserMailer.with(user_id: user_to_alert_id).daily_alerts.deliver_now
    end
  end
end
